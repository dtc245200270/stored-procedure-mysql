USE classicmodels;

-- 1. Tao Store Procedure dau tien: lay tat ca khach hang
DELIMITER //
CREATE PROCEDURE findAllCustomers()
BEGIN
    SELECT * FROM customers;
END //
DELIMITER ;

-- Goi Store Procedure
CALL findAllCustomers();

-- 2. Xoa va sua Store Procedure: lay khach hang co customerNumber = 175
DELIMITER //
DROP PROCEDURE IF EXISTS `findAllCustomers` //
CREATE PROCEDURE findAllCustomers()
BEGIN
    SELECT * FROM customers WHERE customerNumber = 175;
END //
DELIMITER ;

-- Goi lai Store Procedure sau khi sua
CALL findAllCustomers();
