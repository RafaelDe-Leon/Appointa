USE Appointa;

CREATE TABLE IF NOT EXISTS patients (
	ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(45),
    lastname VARCHAR(45),
    email VARCHAR(55),
	phone VARCHAR(25),
	username VARCHAR(55),
    password VARCHAR(45),
    account_id VARCHAR(45),
    insurance_provider VARCHAR(45),
    insurance_group_id VARCHAR(25),
    createdAt DATETIME,
    updatedAt DATETIME
);

CREATE TABLE IF NOT EXISTS doctors (
	ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(45),
	lastname VARCHAR(45),
	discipline VARCHAR(80),
    email VARCHAR(55),
	phone VARCHAR(25),
	username VARCHAR(55),
    password VARCHAR(45),
    account_id VARCHAR(45),
	createdAt DATETIME,
    updatedAt DATETIME
);

CREATE TABLE appointments (
	ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    appointment_date DATE,
    appointment_time TIME,
    patient_request VARCHAR(255),
	doctor_response VARCHAR(255),
    symptoms VARCHAR(255),
    examination VARCHAR(255),
    tests VARCHAR(255),
	diagnosis VARCHAR(255),
    medications VARCHAR(255),
	treatment_plan VARCHAR(255),
    forwarded_to_billing BOOLEAN,
	status VARCHAR(45),
	createdAt DATETIME,
    updatedAt DATETIME
);


