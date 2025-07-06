SELECT 
    p.patient_id,
    d.diagnosis_id,
    t.treatment_id,
    d.diagnosis_date,
    t.end_treatment_date,
    t.survived
INTO FactLungCancer
FROM Patients p
JOIN Diagnosis d ON p.patient_id = d.patient_id
JOIN Treatment t ON p.patient_id = t.patient_id;

SELECT *
FROM FactLungCancer