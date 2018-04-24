#取得平均薪水最高的公司
#输出公司名称和平均薪水：companyName avgSalary
SELECT
	Company.companyName,
	MAX(b.salaryAverage) AS avgSalary
FROM
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
	Company.id = b.companyId;

