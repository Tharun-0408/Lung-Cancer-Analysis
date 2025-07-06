UPDATE dp
SET
	dp.hypertension = cm.hypertension,
	dp.asthma = cm.asthma,
	dp.cirrhosis = cm.cirrhosis,
	dp.other_cancer= cm.other_cancer

FROM DimPatient dp 
JOIN Comorbidities cm ON dp.patient_id = cm.patient_id



