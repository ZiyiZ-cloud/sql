--psql < medical_center.sql

DROP DATABASE IF EXISTS medical_center;

CREATE DATABASE medical_center;


CREATE TABLE doctor
(
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL
  
);

CREATE TABLE patient
(
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL
  
);

CREATE TABLE diagnose
(
  id SERIAL PRIMARY KEY,
  disease text
  
);

CREATE TABLE medical_record
(
  id SERIAL PRIMARY KEY,
  doctor_name integer references doctor,
  patient_name integer references patient,
  disease integer references diagnose
  
);

INSERT INTO doctor
  (first_name,last_name)
VALUES
('Adam','Wood'),
('Nestle','Lava');


INSERT INTO patient
  (first_name,last_name)
VALUES
('Ziyi','Zhang'),
('Yutong','Wang');


INSERT INTO diagnose
  (disease)
VALUES
('head'),
('belly');


INSERT INTO medical_record
  (doctor_name,patient_name,disease)
VALUES
(1,2,1),
(1,2,2),
(2,1,1);    

