CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DOB DATE,
    Gender VARCHAR(10),
    Diagnosis VARCHAR(255)
);

INSERT INTO Patients (PatientID, FirstName, LastName, DOB, Gender, Diagnosis)
VALUES
(1, 'John', 'Doe', '1980-05-15', 'Male', 'Hypertension'),
(2, 'Jane', 'Smith', '1990-07-22', 'Female', 'Diabetes'),
(3, 'Alice', 'Johnson', '1975-09-12', 'Female', 'Asthma'),
(4, 'Michael', 'Williams', '1985-03-18', 'Male', 'Obesity'),
(5, 'Emily', 'Brown', '1992-11-04', 'Female', 'Anxiety'),
(6, 'David', 'Jones', '1988-02-25', 'Male', 'Arthritis'),
(7, 'Sophia', 'Davis', '1995-06-30', 'Female', 'Eczema'),
(8, 'James', 'Miller', '1983-09-11', 'Male', 'Chronic Fatigue Syndrome'),
(9, 'Olivia', 'Garcia', '1991-12-15', 'Female', 'Migraine'),
(10, 'William', 'Martinez', '1978-01-20', 'Male', 'Depression'),
(11, 'Liam', 'Hernandez', '1987-04-08', 'Male', 'Heart Disease'),
(12, 'Mia', 'Lopez', '1994-05-23', 'Female', 'High Blood Pressure'),
(13, 'Benjamin', 'Gonzalez', '1993-10-07', 'Male', 'Sleep Apnea'),
(14, 'Charlotte', 'Wilson', '1980-08-16', 'Female', 'Fibromyalgia'),
(15, 'Lucas', 'Anderson', '1992-09-04', 'Male', 'Allergies'),
(16, 'Amelia', 'Thomas', '1986-07-29', 'Female', 'Hypothyroidism'),
(17, 'Henry', 'Jackson', '1981-01-12', 'Male', 'Psoriasis'),
(18, 'Isabella', 'White', '1996-03-17', 'Female', 'Gastroesophageal Reflux Disease (GERD)'),
(19, 'Jack', 'Harris', '1989-05-09', 'Male', 'Epilepsy'),
(20, 'Zoe', 'Clark', '1993-10-22', 'Female', 'Chronic Bronchitis');

-- Select the whole data
SELECT * FROM Patients;

-- Filter data (e.g., find all female patients):
SELECT * FROM Patients WHERE Gender = 'Female';

--Sort data (e.g., list all patients ordered by last name):
SELECT * FROM Patients ORDER BY LastName;

-- Group data (e.g., count the number of patients with each diagnosis):
SELECT Diagnosis, COUNT(*) AS PatientCount
FROM Patients
GROUP BY Diagnosis;


-- If I want to update patient Diagnosis by ID
UPDATE Patients
SET Diagnosis = 'High Blood Pressure'
WHERE PatientID = #;

-- Delete Patients Record 
DELETE FROM Patients
WHERE PatientID = #;


-- Question 1: What is the gender distribution of patients?

SELECT Gender, COUNT(PatientID) AS PatientCount
FROM Patients
GROUP BY Gender;

-- Question 2: What are the most common diagnoses among patients?

SELECT Diagnosis, COUNT(PatientID) AS PatientCount
FROM Patients
GROUP BY Diagnosis
ORDER BY PatientCount DESC;

-- Question 3: What is the average age of patients for each diagnosis?

SELECT Diagnosis, AVG(DATEDIFF(YEAR, DOB, GETDATE())) AS AverageAge
FROM Patients
GROUP BY Diagnosis;


