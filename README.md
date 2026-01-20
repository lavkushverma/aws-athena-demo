# Amazon Athena Explained: Querying S3 Data ☁️🔍

This repository contains a step-by-step beginner tutorial on how to use **Amazon Athena** to run SQL queries directly on CSV files stored in **Amazon S3**.

## 🚀 What is Amazon Athena?
Amazon Athena is an interactive query service that makes it easy to analyze data in Amazon S3 using standard SQL. It is **serverless**, meaning there is no infrastructure to manage, and you pay only for the queries that you run.

---

## 🛠️ Prerequisites
*   An AWS Account.
*   The `employees.csv` file (included in this repo).

---

## 📝 Step-by-Step Guide

### Step 1: Upload Data to S3
1.  Log in to the **AWS Console** and navigate to **S3**.
2.  **Create a Bucket:**
    *   Name: `athena-demo-bucket-unique-name` (Make sure the name is unique).
    *   Region: Select your preferred region (e.g., `us-east-1` or `ap-south-1`).
3.  **Upload the File:**
    *   Inside your bucket, create a folder named `data`.
    *   Upload the `employees.csv` file from this repository into that `data` folder.
    *   *Path:* `s3://your-bucket-name/data/employees.csv`

### Step 2: Configure Athena Settings
Athena needs a place to store the results of the queries you run.
1.  Navigate to **Amazon Athena** in the AWS Console.
2.  Click on **Settings** (Top right corner of the Query Editor).
3.  Click **Manage**.
4.  In **Query result location**, point to your S3 bucket:
    *   `s3://your-bucket-name/results/`
5.  Click **Save**.

### Step 3: Create the Table
We need to tell Athena how to interpret the CSV data.
1.  Go to the **Query Editor**.
2.  Copy the code from `athena_queries.sql` (Step 1 section).
3.  **Important:** Replace `your-bucket-name` with your actual bucket name.
4.  Click **Run**.
5.  You should see `Query successful`.

### Step 4: Run SQL Queries
Now you can analyze your file without loading it into a database!

**Get all employees:**
```sql
SELECT * FROM employee_table;
```

**Find all employees in IT:**
```sql
SELECT * FROM employee_table WHERE department = 'IT';
```

**Find the average salary:**
```sql
SELECT AVG(salary) FROM employee_table;
```

---

## 🧹 Cleanup
To avoid unexpected charges:
1.  Delete the S3 Bucket you created.
2.  (Optional) Delete the table in Athena by running: `DROP TABLE employee_table;`

---

## 📂 Repository Structure
*   `employees.csv` - Sample dataset.
*   `athena_queries.sql` - All SQL commands used in this tutorial.
*   `README.md` - The tutorial guide.
