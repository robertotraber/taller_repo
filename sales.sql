Select 
	sp.name.
	sp.position,
	sp.salary,
	SUM(a.amount) AS total_sales,
	RANK() OVER (ORDER BY SUM(a.amount) DESC) as sales_rank
FROM
	t_sales_person sp
JOIN 
	t_aggregate_sales a on sp.sales_person_id = a.sales_person_id
GROUP BY 
	sp.name, sp.position, sp.salary
ORDER BY
	total_sales DESC;