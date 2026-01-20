-- STEP 1: Create the Table
-- REPLACE 'your-bucket-name' with your actual S3 bucket name
CREATE EXTERNAL TABLE IF NOT EXISTS employee_table (
  id INT,
  name STRING,
  department STRING,
  salary INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION 's3://your-bucket-name/data/';

-- STEP 2: Verify Data Import
SELECT * FROM employee_table;

-- STEP 3: Filter by Department
SELECT * FROM employee_table 
WHERE department = 'IT';

-- STEP 4: Calculate Average Salary
SELECT AVG(salary) FROM employee_table;

-- STEP 5: Sort by Salary (High to Low)
SELECT name, salary 
FROM employee_table 
ORDER BY salary DESC;
