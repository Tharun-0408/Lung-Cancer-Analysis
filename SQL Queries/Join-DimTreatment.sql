SELECT 
    t.treatment_id,
    t.patient_id,
    tt.treatment_name,
    t.end_treatment_date,
    t.survived
INTO DimTreatment
FROM Treatment t
JOIN TreatmentType tt ON t.treatment_type_id = tt.treatment_type_id;

SELECT *
FROM DimTreatment