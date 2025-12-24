/*

    Create a CustomerSalesSummary View: 

    Build a view that pre-calculates the total amount spent by each customer. 
    
    This view will make it easier to query for customer analytics.

*/

CREATE OR REPLACE VIEW CustomerSalesSummary AS
SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    c.Email,
    c.Phone,
    c.ShippingAddress,
    c.CreatedAt AS CustomerCreatedAt,

    /* ORDER LEVEL METRICS */
    cs.TotalAmountSpent,
    cs.TotalOrders,
    cs.AverageOrderValue,
    cs.FirstOrderDate,
    cs.LastOrderDate,
    cs.LastOrderAmount,
    cs.LastOrderStatus,

    /* ITEM LEVEL METRICS */
    i.TotalQuantityPurchased,
    i.TotalDistinctProductsPurchased

FROM Customers c

    /*

     ORDER-LEVEL AGGREGATIONS

    */

LEFT JOIN (
    SELECT
        o.CustomerID,

        /*  Total revenue from this customer  */
        SUM(o.TotalAmount) AS TotalAmountSpent,

        /* Number of orders          */
        COUNT(o.OrderID) AS TotalOrders,

        /* Average spent per order    */
        AVG(o.TotalAmount) AS AverageOrderValue,

        /* First time they ordered      */
        MIN(o.OrderDate) AS FirstOrderDate,

        /*   Most recent order date     */
        MAX(o.OrderDate) AS LastOrderDate,

        /*  Get last order amount (using GROUP_CONCAT trick)   */
        SUBSTRING_INDEX(
            GROUP_CONCAT(o.TotalAmount ORDER BY o.OrderDate DESC),
            ',', 1
        ) AS LastOrderAmount,

        /*  Get last order status     */
        SUBSTRING_INDEX(
            GROUP_CONCAT(o.CurrentStatus ORDER BY o.OrderDate DESC),
            ',', 1
        ) AS LastOrderStatus

    FROM Orders o
    GROUP BY o.CustomerID
) cs ON cs.CustomerID = c.CustomerID

    /*

     ITEM-LEVEL AGGREGATIONS

     */

LEFT JOIN (
    SELECT
        o.CustomerID,

        /* Total number of units purchased        */
        SUM(oi.Quantity) AS TotalQuantityPurchased,

        /* Total distinct products they ever bought   */
        COUNT(DISTINCT oi.ProductID) AS TotalDistinctProductsPurchased

    FROM Orders o
    JOIN Order_Items oi ON o.OrderID = oi.OrderID
    GROUP BY o.CustomerID
) i ON i.CustomerID = c.CustomerID

