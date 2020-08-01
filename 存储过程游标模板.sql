-- 将语句的结束符号从分号; 临时改为两个$$(可以是自定义)
delimiter $$

DROP PROCEDURE IF EXISTS procedure_test;

CREATE DEFINER = `root` @`localhost` PROCEDURE `procedure_test` ( IN p_tag VARCHAR ( 255 ) ) COMMENT '游标模板' BEGIN

DECLARE
    p_court_id INT DEFAULT 0;
	
DECLARE
    done INT DEFAULT 0;
DECLARE
    l_cursor CURSOR FOR SELECT
    court_id 
FROM
    courts 
WHERE
    tag IN ( p_tag ) 
ORDER BY
    court_id;
	
DECLARE
    CONTINUE HANDLER FOR SQLSTATE '02000' 
    SET done = 1;
	
OPEN l_cursor;
REPEAT
    FETCH l_cursor INTO p_court_id;
IF
    NOT done THEN
	
	
SELECT p_court_id;


END IF;
UNTIL done 
END REPEAT;
CLOSE l_cursor;

END $$

-- 将语句的结束符号恢复为分号
delimiter ;
