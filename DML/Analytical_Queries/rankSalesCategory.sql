/*

    For each product category, rank the products by their total sales revenue. 
    
    The #1 product in 'Electronics', the #1 in 'Apparel', etc.

*/

SELECT
    pc.CategoryName,
    p.ProductID,
    p.ProductName,
    SUM(oi.subTotal) AS TotalRevenue,
    RANK() OVER (
        PARTITION BY pc.CategoryName
        ORDER BY SUM(oi.subTotal) DESC
    ) AS RevenueRank
FROM Order_Items oi
JOIN Products p 
    ON oi.ProductID = p.ProductID
JOIN Product_Categories pc 
    ON p.ProductCategory = pc.CategoryID
JOIN Orders o 
    ON oi.OrderID = o.OrderID
WHERE o.CurrentStatus IN ('Shipped', 'Delivered')
GROUP BY 
    pc.CategoryName,
    p.ProductID,
    p.ProductName
ORDER BY 
    pc.CategoryName,
    RevenueRank
