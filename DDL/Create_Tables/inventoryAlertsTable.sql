CREATE TABLE IF NOT EXISTS `Inventory_Alerts` (
  `AlertID` INT AUTO_INCREMENT PRIMARY KEY,
  `ProductID` INT NOT NULL,
  `AlertType` VARCHAR(100) NOT NULL,
  `AlertDate` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `IsResolved` BOOLEAN DEFAULT FALSE,
  `ResolvedByStaffID` INT,
  `ResolvedDate` TIMESTAMP,
  FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
  FOREIGN KEY (ResolvedByStaffID) REFERENCES Procurement_Staff(StaffID)
)