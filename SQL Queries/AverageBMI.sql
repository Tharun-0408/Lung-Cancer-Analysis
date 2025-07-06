SELECT
	p.patient_id,
	c.country_name,
	p.bmi,
	ROUND(AVG(p.bmi) OVER (PARTITION BY c.country_name), 2) AS avg_countryBMI
FROM Patients p 
JOIN Country c ON p.country_id = c.country_id
