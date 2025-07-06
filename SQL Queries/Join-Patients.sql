CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    age FLOAT,
    gender_id INT,
    country_id INT,
    bmi DECIMAL(5,2),
    cholesterol_level INT,
    FOREIGN KEY (gender_id) REFERENCES Gender(gender_id),
    FOREIGN KEY (country_id) REFERENCES Country(country_id)
);

INSERT INTO Patients(patient_id, age, gender_id, country_id, bmi, cholesterol_level)
SELECT
    l.id,
    l.age,
    g.gender_id,
    c.country_id,
    l.bmi,
    l.cholesterol_level
FROM dbo.[Lung Cancer] l
JOIN Gender g ON l.gender = g.gender
JOIN Country c ON l.country = c.country_name

SELECT * FROM Patients