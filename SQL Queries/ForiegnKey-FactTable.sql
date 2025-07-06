ALTER TABLE FactLungCancer
ADD patient_key INT,
    diagnosis_key INT,
    treatment_key INT;

ALTER TABLE FactLungCancer
ADD 
	CONSTRAINT FK_Fact_Patient FOREIGN KEY(patient_key) REFERENCES DimPatient(patient_key),
	CONSTRAINT FK_Fact_Treatment FOREIGN KEY(treatment_key) REFERENCES DimTreatment(treatment_key),
	CONSTRAINT FK_Fact_Diagnosis FOREIGN KEY(diagnosis_key) REFERENCES DimDiagnosis(diagnosis_key)
