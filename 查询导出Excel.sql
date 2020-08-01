SELECT
    user_name 
    INTO OUTFILE '/mnt/mysql5.7/casecheck_bak/userinfo_bak.xls' 
    CHARACTER SET gbk 
FROM
    userinfo 
WHERE
    id > 1;
