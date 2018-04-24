# 取得每个company中最高薪水的人员名字
# 输出结果包含公司名称和人员名称：companyName name
SELECT
	Company.companyName,
	b.name
FROM
	Company
INNER JOIN (
	SELECT
		id,
		name,
		companyId,
		MAX(salary)
	FROM
		Employee
	GROUP BY
		companyId
) b
WHERE
	Company.id = b.companyId;
