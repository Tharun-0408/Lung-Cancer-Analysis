CREATE INDEX idx_treatment_patient ON Treatment(patient_id);
CREATE INDEX idx_treatment_type ON Treatment(treatment_type_id);
CREATE INDEX idx_diagnosis_patient ON Diagnosis(patient_id);
CREATE INDEX idx_diagnosis_stage ON Diagnosis(stage_id);
CREATE INDEX idx_diagnosis_smoking_status ON Diagnosis(smoking_status_id);
CREATE INDEX idx_patients_gender ON Patients(gender_id);
CREATE INDEX idx_patients_country ON Patients(country_id);
CREATE INDEX idx_comorbidities_patient ON Comorbidities(patient_id);