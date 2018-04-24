# 找出薪水在公司的平均薪水之上的人员名字
# 输出标准中包含Employee中所有字段和该employee所在公司名称以及该公司平均薪资：
# id | name | age | gender | companyId | salary | companyName | avgsal
SELECT
	Employee.*, Company.companyName,
	b.salaryAverage
FROM
	Employee,
	Company
INNER JOIN (
	SELECT
		companyId,
		AVG(salary) AS salaryAverage
	FROM
		Employee
	GROUP BY
		companyId
) b
WHERE
	Company.id = b.companyId
AND Employee.companyId = b.companyId
AND Employee.salary > b.salaryAverage;