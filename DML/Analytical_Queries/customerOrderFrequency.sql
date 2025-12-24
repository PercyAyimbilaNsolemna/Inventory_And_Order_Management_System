/*

    Customer Order Frequency: Show a list of customers and the date of their previous order 
    
    alongside the date of their current order. This helps analyze how frequently customers return.

*/

SELECT
    c.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
    o.OrderID,
    o.OrderDate AS CurrentOrderDate,

    COALESCE(
        LAG(o.OrderDate) OVER (
            PARTITION BY c.CustomerID
            ORDER BY o.OrderDate
        ),
        'First Order'
    ) AS PreviousOrderDate
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
ORDER BY c.CustomerID, o.OrderDate

