SELECT 
    d.diagnosis_id,
    d.patient_id,
    d.diagnosis_date,
    cs.stage_name AS cancer_stage,
    ss.status AS smoking_status,
    d.family_history
INTO DimDiagnosis
FROM Diagnosis d
JOIN CancerStage cs ON d.stage_id = cs.stage_id
JOIN SmokingStatus ss ON d.smoking_status_id = ss.smoking_status_id;

SELECT * 
FROM DimDiagnosis