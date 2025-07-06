CREATE TABLE Comorbidities(
	patient_id INT PRIMARY KEY,
	cholesterol BIT,
	hypertension BIT,
	asthma BIT,
	cirrhosis BIT,
	other_cancer BIT,
	FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);

SELECT *
FROM Comorbidities

INSERT INTO Comorbidities(patient_id, hypertension, asthma, cirrhosis, other_cancer) 
SELECT 
	id,
	hypertension,
	asthma,
	cirrhosis,
	other_cancer
FROM [Lung Cancer]
