WITH rank_cte AS(
SELECT  
	p.patient_id,
	p.age,
	c.country_name,
	RANK() OVER (PARTITION BY c.country_name ORDER  BY p.age ASC) as age_rank
FROM Patients p
JOIN Country c on p.country_id = c.country_id
)

SELECT 
	patient_id,
	age,
	country_name
FROM rank_cte
WHERE age_rank = 1