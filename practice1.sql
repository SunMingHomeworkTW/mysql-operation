# 1.创建数据库employee_db
create DATABASE employee-data;

# 2.在数据库employee_db中创建table：`Employee`
CREATE TABLE Employee (
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR (20) NOT NULL,
	age INT NOT NULL,
	gender VARCHAR (10) NOT NULL,
	companyId INT NOT NULL,
	salary INT NOT NULL,
	PRIMARY KEY (id)
);

# 3.将`employee-data.csv`文件中的数据导入数据表Employee中
LOAD DATA LOCAL INFILE 'E:\\thoughtworks\\7.2\\2018-04-04-05-16-35-1522818995\\employee-data.csv' INTO TABLE Employee
   FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"'
   LINES TERMINATED BY '\n';

# 4.在数据库employee_db中创建table：`Company`
CREATE TABLE Company (
	id INT NOT NULL,
	companyName VARCHAR (20) NOT NULL,
	employeesNumber INT NOT NULL,
	PRIMARY KEY (id)
);

# 5.将`company-data.csv`文件中的数据导入Company数据表中
LOAD DATA LOCAL INFILE 'E:\\thoughtworks\\7.2\\2018-04-04-05-16-35-1522818995\\company-data.csv' INTO TABLE Company
    FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"'
    LINES TERMINATED BY '\n';

# 6.找出Employee表中姓名包含`n`字符并且薪资大于6000的雇员所有个人信息
SELECT
	*
FROM
	Employee
WHERE
	name LIKE '%n%'
AND salary > 6000;

# ps:本练习中只需要将6的结果复制到`result.txt`文件中