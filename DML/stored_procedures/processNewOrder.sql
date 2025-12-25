/*

    Creates a stored procedure for creating new orders

    Accepts CustomerID, ProductID, Quantity and order items as json array

    Checks if the customer exist, if the customer does not exist return an error message

    Checks if the order items is null then return or create and display an error message

    Checks if there is enough stock in the inventory

    If there is reduce inventory quantity else throw an error

    If there is create a new record in the orders table

    Create new records for each of the order items

    Sample input:
    CustomerID,
    [
        {"ProductID": 1, "Quantity": 2},
        {"ProductID": 4, "Quantity": 1}
    ]


*/

DROP PROCEDURE IF EXISTS ProcessNewOrder;

CREATE PROCEDURE ProcessNewOrder(
    IN inCustomerID INT,
    IN inOrderItemsJSON JSON
)
BEGIN
    DECLARE vOrderID INT;
    DECLARE vTotalAmount DECIMAL(10,2) DEFAULT 0.00;
    DECLARE vErrorMessage VARCHAR(255);
    DECLARE vCustomerExists INT DEFAULT 0;
    DECLARE vItemCount INT DEFAULT 0;

    /* Start transaction  */
    START TRANSACTION;

    /* ---------------------------------------------------------------
       1. Validate Customer Exists
    ---------------------------------------------------------------- */
    SELECT COUNT(*) INTO vCustomerExists
    FROM Customers
    WHERE CustomerID = inCustomerID;

    IF vCustomerExists = 0 THEN
        ROLLBACK;
        SIGNAL SQLSTATE '45000' 
            SET MESSAGE_TEXT = 'Invalid CustomerID. Customer does not exist.';
    END IF;

    /* ---------------------------------------------------------------
       2. Validate JSON array is not empty
    ---------------------------------------------------------------- */
    SELECT JSON_LENGTH(inOrderItemsJSON) INTO vItemCount;

    IF vItemCount = 0 THEN
        ROLLBACK;
        SIGNAL SQLSTATE '45000' 
            SET MESSAGE_TEXT = 'Order items list cannot be empty.';
    END IF;

    /* ---------------------------------------------------------------
       3. Prepare Temporary Table for Items
    ---------------------------------------------------------------- */
    DROP TEMPORARY TABLE IF EXISTS tmp_order_items;

    CREATE TEMPORARY TABLE tmp_order_items AS
    SELECT *
    FROM JSON_TABLE(
        inOrderItemsJSON,
        '$[*]' COLUMNS (
            ProductID INT PATH '$.ProductID',
            Quantity INT PATH '$.Quantity'
        )
    ) AS jt;

    /* ---------------------------------------------------------------
       4. Validate Product Exists
    ---------------------------------------------------------------- */
    SELECT 
        CONCAT('Invalid ProductID: ', t.ProductID)
    INTO vErrorMessage
    FROM tmp_order_items t
    LEFT JOIN Products p ON p.ProductID = t.ProductID
    WHERE p.ProductID IS NULL
    LIMIT 1;

    IF vErrorMessage IS NOT NULL THEN
        DROP TEMPORARY TABLE tmp_order_items;
        ROLLBACK;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = vErrorMessage;
    END IF;

    /* ---------------------------------------------------------------
       5. Stock Availability Check
    ---------------------------------------------------------------- */
    SELECT 
        CONCAT('Insufficient stock for ProductID: ', t.ProductID)
    INTO vErrorMessage
    FROM tmp_order_items t
    JOIN Inventories inv ON inv.ProductID = t.ProductID
    WHERE t.Quantity > inv.QuantityOnHand
    LIMIT 1;

    IF vErrorMessage IS NOT NULL THEN
        DROP TEMPORARY TABLE tmp_order_items;
        ROLLBACK;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = vErrorMessage;
    END IF;

    /* ---------------------------------------------------------------
       6. Create new order
    ---------------------------------------------------------------- */
    INSERT INTO Orders (CustomerID, OrderDate, CurrentStatus)
    VALUES (inCustomerID, NOW(), 'Pending');

    SET vOrderID = LAST_INSERT_ID();

    /* ---------------------------------------------------------------
       7. Insert Order Items
    ---------------------------------------------------------------- */
    INSERT INTO Order_Items (OrderID, ProductID, Quantity, PriceAtPurchase, SubTotal)
    SELECT 
        vOrderID,
        p.ProductID,
        t.Quantity,
        p.Price,
        (p.Price * t.Quantity)
    FROM tmp_order_items t
    JOIN Products p ON p.ProductID = t.ProductID;

    /* ---------------------------------------------------------------
       8. Update Inventory
    ---------------------------------------------------------------- */
    UPDATE Inventories inv
    JOIN tmp_order_items t ON inv.ProductID = t.ProductID
    SET inv.QuantityOnHand = inv.QuantityOnHand - t.Quantity,
        inv.LastUpdated = NOW();

    /* ---------------------------------------------------------------
       9. Compute Total Order Amount
    ---------------------------------------------------------------- */
    SELECT SUM(SubTotal)
    INTO vTotalAmount
    FROM Order_Items
    WHERE OrderID = vOrderID;

    UPDATE Orders
    SET TotalAmount = vTotalAmount
    WHERE OrderID = vOrderID;

    /* Cleanup temporary table */
    DROP TEMPORARY TABLE IF EXISTS tmp_order_items;

    /* Final commit */
    COMMIT;
END;


