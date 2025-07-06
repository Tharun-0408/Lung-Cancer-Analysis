/*CREATE TABLE Gender (
    gender_id INT PRIMARY KEY,
    gender VARCHAR(10) NOT NULL
);

CREATE TABLE Country (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(100) NOT NULL
);

CREATE TABLE SmokingStatus (
    smoking_status_id INT PRIMARY KEY,
    status VARCHAR(50) NOT NULL
);

CREATE TABLE CancerStage (
    stage_id INT PRIMARY KEY,
    stage_name VARCHAR(20) NOT NULL
);

CREATE TABLE TreatmentType (
    treatment_type_id INT PRIMARY KEY,
    treatment_name VARCHAR(50) NOT NULL
);
*/

WITH DistinctGenders AS (
    SELECT DISTINCT gender
    FROM dbo.[Lung Cancer] 
)
INSERT INTO Gender (gender_id, gender)
SELECT 
    ROW_NUMBER() OVER (ORDER BY gender) AS gender_id,
    gender
FROM DistinctGenders;
