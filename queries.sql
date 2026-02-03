
SELECT p.first_name, d.first_name AS doctor, a.appointment_date, a.status
FROM appointments a
JOIN patients p ON a.patient_id = p.patient_id
JOIN doctors d ON a.doctor_id = d.doctor_id;



SELECT d.first_name, d.specialization, dept.department_name
FROM doctors d
JOIN departments dept ON d.department_id = dept.department_id;




SELECT p.first_name, m.medicine_name, pr.dosage, pr.duration
FROM prescriptions pr
JOIN medicines m ON pr.medicine_id = m.medicine_id
JOIN medical_records mr ON pr.record_id = mr.record_id
JOIN patients p ON mr.patient_id = p.patient_id;
