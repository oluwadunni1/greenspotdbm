-- Create Database
CREATE DATABASE IF NOT EXISTS `greenspot`;

-- Create Customer Table
CREATE TABLE IF NOT EXISTS `greenspot`.`customer` (
  `customer_id` INT NOT NULL AUTO_INCREMENT,
  `customer_name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4;

-- Create Items Table
CREATE TABLE IF NOT EXISTS `greenspot`.`items` (
  `item_no` INT NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(100) NOT NULL,
  `item_type` VARCHAR(45) NOT NULL,
  `unit` VARCHAR(20) NOT NULL,
  `inventory_level` INT NOT NULL DEFAULT 0, -- New column to track stock levels
  PRIMARY KEY (`item_no`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4;

-- Create Location Table
CREATE TABLE IF NOT EXISTS `greenspot`.`location` (
  `location_id` VARCHAR(10) NOT NULL,
  `location_name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4;

-- Create Vendors Table
CREATE TABLE IF NOT EXISTS `greenspot`.`vendors` (
  `vendor_id` INT NOT NULL AUTO_INCREMENT,
  `vendor_name` VARCHAR(100) NOT NULL,
  `vendor_address` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`vendor_id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4;

-- Create Purchase Table
CREATE TABLE IF NOT EXISTS `greenspot`.`purchase` (
  `purchase_id` INT NOT NULL AUTO_INCREMENT,
  `item_no` INT NOT NULL,
  `vendor_id` INT NOT NULL,
  `purchase_date` DATE NOT NULL,
  `cost` DECIMAL(10,2) NOT NULL,
  `quantity_purchased` INT NOT NULL CHECK (`quantity_purchased` > 0),
  PRIMARY KEY (`purchase_id`),
  FOREIGN KEY (`item_no`) REFERENCES `greenspot`.`items` (`item_no`) ON DELETE CASCADE,
  FOREIGN KEY (`vendor_id`) REFERENCES `greenspot`.`vendors` (`vendor_id`) ON DELETE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 25 DEFAULT CHARACTER SET = utf8mb4;

-- Create Sales Table
CREATE TABLE IF NOT EXISTS `greenspot`.`sales` (
  `sale_id` INT NOT NULL AUTO_INCREMENT,
  `item_no` INT NOT NULL,
  `date_sold` DATE NOT NULL,
  `price` DECIMAL(10,2) NOT NULL CHECK (`price` > 0),
  `location_id` VARCHAR(10) NOT NULL,
  `quantity_sold` INT NOT NULL CHECK (`quantity_sold` > 0),
  `customer_id` INT NOT NULL,
  PRIMARY KEY (`sale_id`),
  FOREIGN KEY (`customer_id`) REFERENCES `greenspot`.`customer` (`customer_id`) ON DELETE CASCADE,
  FOREIGN KEY (`location_id`) REFERENCES `greenspot`.`location` (`location_id`) ON DELETE CASCADE,
  FOREIGN KEY (`item_no`) REFERENCES `greenspot`.`items` (`item_no`) ON DELETE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 25 DEFAULT CHARACTER SET = utf8mb4;

