-- Write your SQL code here
CREATE TRIGGER before_sim_card_deletion
BEFORE DELETE OF Sim card No.
ON Sim card
BEGIN
    IF OLD.status = 'active' THEN
        SIGNAL SQL STATE '45000'
        SET MESSAGE_TEXT = 'Cannot delete a sim card with an active status.';
    END IF;
END;