use Hospital_management;

select * from patients;

select doctor_name, specialization
from doctors;

select * from appointment_details;

select 
p.patient_name,
pr.medicine_name,
pr.dosage,
pr.duration
from prescriptions pr
join appointments a
on pr.appointment_id=a.appointment_id
join patients p
on a.patient_id=p.patient_id;

select * from billing_report;

select * from billing
where payment_status="pending";

select sum(amount) as total_revenue
from billing;

select d.doctor_name,
count(a.appointment_id) as total_appointments
from doctors d
join appointments a
on d.doctor_id=a.doctor_id
group by d.doctor_name;

