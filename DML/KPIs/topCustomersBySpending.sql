/*

    Top 10 Customers: Find the top 10 customers by their total spending. 
    
    Show Customer Name and Total Amount Spent.

*/

SELECT c.CustomerID, c.FirstName, c.LastName,
        SUM(o.TotalAmount) AS `TotalAmountSpent`
    FROM Orders o
    INNER JOIN Customers c 
        ON o.CustomerID =  c.CustomerID
    GROUP BY
        c.CustomerID,
        c.FirstName,
        c.LastName
    ORDER BY `TotalAmountSpent` DESC
    LIMIT 10

    