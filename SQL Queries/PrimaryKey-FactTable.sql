ALTER TABLE FactLungCancer
ADD fact_id INT IDENTITY(1,1);

-- Step 2: Set it as the primary key
ALTER TABLE FactLungCancer
ADD CONSTRAINT PK_FactLungCancer PRIMARY KEY (fact_id);