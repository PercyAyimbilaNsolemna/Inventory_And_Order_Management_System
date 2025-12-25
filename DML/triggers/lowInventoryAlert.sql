/*
    1. The trigger should run AFTER UPDATE
        Stock only changes during updates (not insert).
    2. It should only fire when:
        QuantityOnHand decreases, and
        NEW.QuantityOnHand ≤ NEW.ReorderLevel
        This prevents spam alerts when quantities increase or remain unchanged.
    3. It should not create duplicate alerts for the same product in the same low-inventory state.
*/

DROP TRIGGER IF EXISTS trg_low_inventory_alert;

CREATE TRIGGER trg_low_inventory_alert
AFTER UPDATE ON Inventories
FOR EACH ROW
BEGIN
    /* Trigger only when stock decreases  */
    IF NEW.QuantityOnHand < OLD.QuantityOnHand THEN
        /* Check if stock is below or equal to reorder level  */
        IF NEW.QuantityOnHand <= NEW.ReorderLevel THEN
            
            /* Ensure no existing unresolved alert for this product  */
            IF NOT EXISTS (
                SELECT 1 
                FROM Inventory_Alerts 
                WHERE ProductID = NEW.ProductID
                AND IsResolved = FALSE
            ) THEN
                INSERT INTO Inventory_Alerts (ProductID, AlertType, AlertDate, IsResolved)
                VALUES (
                    NEW.ProductID,
                    CONCAT('Low stock: Quantity ', NEW.QuantityOnHand, 
                           ' is at or below reorder level ', NEW.ReorderLevel),
                    NOW(),
                    FALSE
                );
            END IF;
        END IF;
    END IF;
END;