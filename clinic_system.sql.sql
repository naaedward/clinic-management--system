DROP TABLE IF EXISTS patients;
CREATE TABLE patients (
  id INT PRIMARY KEY NOT NULL, 
  firstName VARCHAR(100) NOT NULL,
  lastName VARCHAR(100),
  date_of_birth DATE,
  phoneNumber VARCHAR(15) UNIQUE
);


DROP TABLE IF EXISTS Doctors;
CREATE TABLE Doctors (
    doctor_id INT NOT NULL PRIMARY KEY,
    firstName VARCHAR(100) NOT NULL,
    specialty VARCHAR(50),
    phone_number VARCHAR(15) UNIQUE
);

CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY NOT NULL,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    appointment_date DATE NOT NULL,
    reason TEXT
);


CREATE TABLE Treatments (
    treatment_id INT PRIMARY KEY NOT NULL,
    appointment_id INT NOT NULL,
    treatment_description TEXT NOT NULL,
    cost DECIMAL(10,2) NOT NULL
);