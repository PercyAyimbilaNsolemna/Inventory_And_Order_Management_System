SELECT SUM(TotalAmount) AS `Total Revenue`
    FROM `Orders`
    WHERE CurrentStatus IN ('Delivered', 'Shipped')
