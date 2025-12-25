/*

    Trigger fires after inventory update

    Resolves alerts only if stock increases

    Resolves only alerts that are currently unresolved

    Avoids unnecessary writes when nothing changes

*/

DROP TRIGGER IF EXISTS trg_resolve_inventory_alert;

CREATE TRIGGER trg_resolve_inventory_alert
AFTER UPDATE ON Inventories
FOR EACH ROW
BEGIN
    /* Trigger only when stock increases */
    IF NEW.QuantityOnHand > OLD.QuantityOnHand THEN
        
        /* Resolve only unresolved alerts for this product */
        UPDATE Inventory_Alerts
        SET IsResolved = TRUE,
            ResolvedDate = NOW(),
            AlertType = 'Stock replenished',
            ResolvedByStaffID = 9001
        WHERE ProductID = NEW.ProductID
        AND IsResolved = FALSE;
        
    END IF;
END;
