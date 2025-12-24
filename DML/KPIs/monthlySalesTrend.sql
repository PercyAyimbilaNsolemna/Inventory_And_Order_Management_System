/*

    Monthly Sales Trend: Show the total sales revenue for each month.

    Sums only completed transactions (Excldes Pending orders)

*/

SELECT 
    DATE_FORMAT(OrderDate, '%Y-%m') AS `SalesMonth`,
    SUM(TotalAmount) AS `TotalMonthlyRevenue`
FROM orders
WHERE CurrentStatus in ('Delivered', 'Shipped')
GROUP BY 
    SalesMonth
ORDER BY
    SalesMonth 