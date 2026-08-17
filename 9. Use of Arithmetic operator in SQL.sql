-- Create the employees11 table
CREATE TABLE employees11(
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10, 2) CHECK (salary > 0),
    joining_date DATE NOT NULL,
    age INT CHECK (age >= 18)
);



-- Insert data into employees11 table
INSERT INTO employees11 (first_name, last_name, department, salary, joining_date, age) VALUES
('Amit', 'Sharma', 'IT', 60000.00, '2022-05-01', 29),
('Neha', 'Patel', 'HR', 55000.00, '2021-08-15', 32),
('Ravi', 'Kumar', 'Finance', 70000.00, '2020-03-10', 35),
('Anjali', 'Verma', 'IT', 65000.00, '2019-11-22', 28),
('Suresh', 'Reddy', 'Operations', 50000.00, '2023-01-10', 26);

SELECT * FROM employees11;

--Use of Arithmetic Operators (+,-,*,%,/)
-- calculating 10% of bonus on Salary
SELECT first_name,
(salary*0.10)::DECIMAL(10,2) AS bonus
From employees11;

--Calculating Annual Salary ,salary increment by 5% and monthly new salary.
SELECT first_name ,last_name ,salary,
(salary*12)  :: DECIMAL(10,2) AS annual_salary ,
(salary*0.05)::DECIMAL(10,2)  AS increment_amount,
(salary+salary*0.50)::DECIMAL(10,2) AS new_salary
FROM employees11;

--Deduct 5,000 from each employee salary
SELECT first_name,last_name,salary,
(salary-5000.00) ::DECIMAL(10,2) AS after_deduction_salary
FROM employees11;

--Divide each employee salary into 5 equal parts


SELECT first_name, last_name, salary,
       (salary / 5)::DECIMAL(10,2) AS new_salary
FROM employees11;

--divide each employee age with 2 to find modulus

SELECT first_name, last_name,age,
(age%2)::INT AS Modulus
FROM employees11;

 
