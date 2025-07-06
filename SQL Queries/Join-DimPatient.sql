SELECT 
    p.patient_id,
    p.age,
    g.gender,
    c.country_name,
    p.bmi,
    p.cholesterol_level
INTO DimPatient
FROM Patients p
JOIN Gender g ON p.gender_id = g.gender_id
JOIN Country c ON p.country_id = c.country_id;

select *
FROM DimPatient