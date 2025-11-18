CREATE KEYSPACE Healthcare WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 }
describe keyspaces;
USE Healthcare;

CREATE TABLE Healthcare.Appoinment (  
appoinment_id int PRIMARY KEY,  
appointment_date date,  
appointment_time time,
patient_id int,
doctor_id int,
);

CREATE TABLE Healthcare.Billing_information (  
policy_number int PRIMARY KEY,  
insurance_provider text,
phone_number int,  
billing_amount text,
payment_status text,
patient_id int,
);

CREATE TABLE Healthcare.Doctor_table(
doctor_id int PRIMARY KEY,
first_name text,
last_name text,
age int,
email varchar,
specialty text,
years_of_experience int,
patient_id int
);

CREATE TABLE Healthcare.Lab_tests(
test_id int PRIMARY KEY,
test_date Date,
test_time time,
diagonsis_code text,
patient_id int,
doctor_id int
);


CREATE TABLE Healthcare.Medical_records(
record_id int PRIMARY KEY,
treatment text;
record_date Date,
test_time time,
diagonsis_code varchar,
patient_id int,
doctor_id int
);

CREATE TABLE Healthcare.Prescriptions(
prescription_id int PRIMARY KEY,
medication text;
prescription_date Date,
drug_brand text,
patient_id int,
doctor_id int
);