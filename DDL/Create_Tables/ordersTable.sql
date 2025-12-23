CREATE TABLE IF NOT EXISTS orders (
    `orderID` INT PRIMARY KEY,
    `customerID` INT, 
    `orderDate` TIMESTAMP,
    `totalAmount` DECIMAL(10, 3),
    `currentStatus` VARCHAR(10),
    `createdAt` TIMESTAMP,
    FOREIGN KEY (customerID) REFERENCES customers(customerID)

)