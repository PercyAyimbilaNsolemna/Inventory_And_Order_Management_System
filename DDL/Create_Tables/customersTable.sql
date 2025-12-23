CREATE TABLE IF NOT EXISTS `customers` (
    `customerID` INT PRIMARY KEY,
    `firstName` VARCHAR(50),
    `lastName` VARCHAR(50),
    `email` VARCHAR(50),
    `phoneNumber` VARCHAR(50),
    `shippingAddress` VARCHAR(50),
    `createdAt` TIMESTAMP, 
    `isActive` BOOLEAN
)