-- INTO OUTFILE 后为于服务器中存放位置及导出文件名
SELECT
    user_name 
    INTO OUTFILE '/mnt/mysql5.7/casecheck_bak/userinfo_bak.xls' 
    CHARACTER SET gbk 
FROM
    userinfo 
WHERE
    id > 1;
