DELIMITER $$
CREATE TRIGGER before_sim_card_deletion
BEFORE DELETE ON SimCard
FOR EACH ROW
BEGIN
    IF OLD.Status = 'active' THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Cannot delete a sim card with an active status.';
    END IF;
END $$

DELIMITER;

-- Trigger to check if the date is in the future
DELIMITER $$

CREATE TRIGGER CheckDateBeforeInsert
BEFORE INSERT ON Calls
FOR EACH ROW
BEGIN
    IF NEW.Date > CURDATE() THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Date cannot be in the future';
    END IF;
END $$

DELIMITER ;

-- Trigger to check if the date is in the future
DELIMITER $$

CREATE TRIGGER CheckActivationDateBeforeInsert
BEFORE INSERT ON SimCard
FOR EACH ROW
BEGIN
    -- Check if Activation_Date is greater than the current date
    IF NEW.Activation_Date > CURDATE() THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Activation Date cannot be in the future';
    END IF;
END $$

DELIMITER ;

-- Trigger to check if the date is in the future
DELIMITER $$

CREATE TRIGGER CheckPaymentDateBeforeInsert
BEFORE INSERT ON Payment
FOR EACH ROW
BEGIN
    -- Check if Payment_Date is greater than the current date
    IF NEW.Payment_Date > CURDATE() THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Payment Date cannot be in the future';
    END IF;
END $$

DELIMITER ;