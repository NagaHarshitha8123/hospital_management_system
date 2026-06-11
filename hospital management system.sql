use hospital_management_system;

SELECT p.patient_name, d.doctor_name
FROM Patients p
JOIN Appointments a
ON p.patient_id = a.patient_id
JOIN Doctors d
ON a.doctor_id = d.doctor_id;

SELECT d.doctor_name, dept.department_name
FROM Doctors d
JOIN Departments dept
ON d.department_id = dept.department_id;

SELECT a.appointment_id, p.patient_name, a.appointment_date
FROM Appointments a
JOIN Patients p
ON a.patient_id = p.patient_id;

SELECT p.patient_name, a.appointment_date
FROM Patients p
LEFT JOIN Appointments a
ON p.patient_id = a.patient_id;

SELECT d.doctor_name, a.appointment_date
FROM Appointments a
RIGHT JOIN Doctors d
ON a.doctor_id = d.doctor_id;