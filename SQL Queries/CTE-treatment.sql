With DistinctTreatment AS(
	SELECT DISTINCT dbo.[Lung Cancer].treatment_type 
	FROM dbo.[Lung Cancer]
)
INSERT INTO TreatmentType(treatment_type_id, treatment_name)
SELECT 
	ROW_NUMBER() OVER (ORDER BY treatment_type) as treatment_type_id,
	treatment_type
FROM DistinctTreatment

SELECT * 
FROM TreatmentType

