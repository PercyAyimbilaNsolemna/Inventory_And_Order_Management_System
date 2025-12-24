/*

    Best-Selling Products: Lists the top 5 best-selling products by quantity sold.

*/

SELECT p.ProductID, p.ProductName,
        SUM(oi.Quantity) AS `TotalQuantitySold`
    FROM products p
    INNER JOIN Order_Items oi
        ON p.ProductID = oi.ProductID
    GROUP BY
            p.ProductID,
            p.ProductName
    ORDER BY
            `TotalQuantitySold` DESC
            LIMIT 5