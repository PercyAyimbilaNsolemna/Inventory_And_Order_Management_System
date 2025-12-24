/*

    Calculates the total revenue for shipped or delivered orders

*/

SELECT SUM(TotalAmount) AS `Total Revenue`
    FROM `Orders`
    WHERE CurrentStatus IN ('Delivered', 'Shipped')
