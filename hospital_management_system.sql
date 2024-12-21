
-- Creating Doctors Table
CREATE TABLE `Doctors` (
	`doctor_id` INT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `doctor_name` VARCHAR(100) NOT NULL,
    `specialization` VARCHAR(50) NOT NULL,
    `phone` INT(20) NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);


-- Creating Patients Table
CREATE TABLE `Patients` (
	`patient_id` INT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `patient_name` VARCHAR(100) NOT NULL,
    `age` INT(3) NOT NULL,
    `gender` VARCHAR(10) NOT NULL,
    `phone` INT(20) NOT NULL
);

-- Creating Appointments Table
CREATE TABLE `Appointments` (
	`appointment_id` INT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `patient_id` INT,
    `doctor_id` INT,
    `date` DATE NOT NULL,
    `time` TIME NOT NULL,
    `status` VARCHAR(20) NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)

);

-- Creating Departments Table
CREATE TABLE `Departments` (
	`department_id` INT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(100) NOT NULL,
    `location` VARCHAR(50) NOT NULL
);


-- Insert data to Departments Table
INSERT INTO Departments (name, location)
VALUES ('Cardiology', 'Building A, 1st Floor'), ('Neurology', 'Building A, 3rd Floor'), ('Pediatrics', 'Building B, 3rd Floor'), ('Orthopedic', 'Building B, 1st Floor'), ('Gynecology', 'Building B, 2nd Floor');

-- Insert data to Doctors Table
INSERT INTO Doctors (doctor_name, specialization, phone, department_id)
VALUES ('Dr. Md. Aktaruzzaman', 'Cardiology Specialist', 017, 1), ('Dr. Nazrul Islam Shawon', 'Neurology Specialist', 018, 2), ('Dr. Fahmida Akter', 'Pediatrics Specialist', 019, 3), ('Dr. Habibul Basar', 'Orthopedic Specialist', 013, 4), ('Dr. Rubaba Khan', 'Gynecology Specialist', 015, 5);

-- Insert data to Patients Table
INSERT INTO Patients (patient_name, age, gender, phone)
VALUES ('Habibulla', 28, 'Male', 017), ('S. K. Mubassher Hossain', 58, 'Male', 015), ('Khusbu Taharat', 5, 'Female', 019), ('Prashant Roy', 32, 'Male', 019), ('MST Tahmina Parveen', 35, 'Female', 018);



-- Insert data to Appointments Table
INSERT INTO Appointments (patient_id, doctor_id, date, time, status)
VALUES ('1', '1', '2024-12-22', '06:30:00', 'Scheduled'), ('2', '2', '2024-12-22', '7:00:00', 'Scheduled'), ('3', '3', '2024-12-22', '5:00:00', 'Scheduled'), ('4', '4', '2024-12-22', '7:20:00', 'Scheduled'), ('5', '5', '2024-12-20', '8:00:00','Complete');

