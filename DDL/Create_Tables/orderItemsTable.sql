CREATE TABLE IF NOT EXISTS `Order_Items` (
  `OrderItemID` INT AUTO_INCREMENT PRIMARY KEY,
  `OrderID` INT NOT NULL,
  `ProductID` INT NOT NULL,
  `Quantity` INT NOT NULL CHECK (Quantity > 0),
  `PriceAtPurchase` DECIMAL(10,2) NOT NULL,
  `SubTotal` DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
  FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
)


