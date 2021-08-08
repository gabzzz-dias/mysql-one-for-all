DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE
ON users FOR EACH ROW
BEGIN

DELETE FROM user_history
WHERE user_history.user_id = OLD.user_id;
DELETE FROM user_following
WHERE user_following.user_id = OLD.user_id;

END$$    

DELIMITER ;
