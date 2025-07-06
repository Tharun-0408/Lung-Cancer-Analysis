CREATE TABLE Diagnosis (
    diagnosis_id INT PRIMARY KEY IDENTITY(1,1),
    patient_id INT,
    diagnosis_date DATE,
    stage_id INT,
    family_history BIT,
    smoking_status_id INT,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (stage_id) REFERENCES CancerStage(stage_id),
    FOREIGN KEY (smoking_status_id) REFERENCES SmokingStatus(smoking_status_id)
);

INSERT INTO Diagnosis (patient_id, diagnosis_date, stage_id, family_history, smoking_status_id)
SELECT
    id,
    diagnosis_date,
    CASE cancer_stage
        WHEN 'Stage I' THEN 1
        WHEN 'Stage II' THEN 2
        WHEN 'Stage III' THEN 3
        WHEN 'Stage IV' THEN 4
    END,
    family_history,
    CASE smoking_status
        WHEN 'Current Smoker' THEN 1
        WHEN 'Former Smoker' THEN 2
        WHEN 'Never Smoked' THEN 3
        WHEN 'Passive Smoker' THEN 4
    END
FROM dbo.[Lung Cancer]

SELECT * 
FROM Diagnosis