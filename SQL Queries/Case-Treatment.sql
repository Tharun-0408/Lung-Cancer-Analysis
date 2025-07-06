CREATE TABLE Treatment (
    treatment_id INT PRIMARY KEY IDENTITY(1,1),
    patient_id INT,
    treatment_type_id INT,
    end_treatment_date DATE,
    survived BIT,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (treatment_type_id) REFERENCES TreatmentType(treatment_type_id)
);

INSERT INTO Treatment (patient_id, treatment_type_id, end_treatment_date, survived)
SELECT
    id,
    CASE treatment_type
        WHEN 'Chemotherapy' THEN 1
        WHEN 'Combined' THEN 2
        WHEN 'Radiation' THEN 3
        WHEN 'Surgery' THEN 4
    END,
    end_treatment_date,
    survived
FROM dbo.[Lung Cancer];

SELECT *
FROM Treatment