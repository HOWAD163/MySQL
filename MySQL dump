0. 常用：

-- 导出单表
mysqldump -u用户名 -p密码 -hIP -P端口  数据库名 表名 > /mnt9/casecheck_bak/backup.sql

-- 导出数据库某张表 仅表结构
mysqldump -u用户名 -p密码 -hIP -P端口 -d --single-transaction 数据库名 表名 > /mnt9/casecheck_bak/backup.sql;

-- 导出数据库某张表 表结构和数据
mysqldump -u用户名 -p密码 -hIP -P端口 --single-transaction 数据库名 表名 > /mnt9/casecheck_bak/backup.sql;

-- 导出数据库下全部存储过程和自定义函数
mysqldump -uslave_jufa_0728 -pCJvH3dUMOvsn -h192.168.0.234 -P3312 -ntd -R --single-transaction pingcha > /mnt9/casecheck/backup.sql;

-- 按条件[id = 1]导出表的数据
mysqldump -uroot -proot --host=127.0.0.1 --where='id=1' 数据库名 表名 > /mnt9/casecheck/backup.sql;


1. 必选参数：

连接数据库的用户名
--user=user_name, -u

连接数据库的密码，如果使用 -p 缩写，和密码之间不能有空格
--password=password, -p

2. 可选参数：

指定导出的库名
--databases, -B

--all-databases
表示导出所有的库

会覆盖 --databases or -B 选项，指定导出某个表就会忽略库选项
--tables

不导出数据，只导出表结构
--no-data, -d

只导出数据，不导出表结构，不添加 CREATE TABLE 语句
--no-create-info, -t

不添加 CREATE DATABASE 建库语句
--no-create-db, -n

导出存储过程以及自定义函数
--routines, -R

3. 恢复备份：
mysql -u用户名 -p密码 databse < /mnt9/casecheck/backup.sql;

或

mysql -u用户名 -p密码

use databse;

source /mnt9/casecheck/backup.sql;
