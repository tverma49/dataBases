#1.
SELECT count(pat_id) as NumberOfPatients FROM thedocs.patients;

#2.
SELECT * FROM thedocs.patients where town='Athlone';

#3.
SELECT * from drugs where cost = 2.95;

#4.
SELECT * from drugs where cost > 3.50;

#5.
SELECT * from patients where dateOfBirth = (select max(dateOfBirth) from patients);

#6.
SELECT * from patients where dateOfBirth = (select min(dateOfBirth) from patients);

#7.
SELECT count(*) from doctors;

#8.
SELECT firstName, lastName from doctors order by lastName desc;

#9.
SELECT * from doctors where firstName like '%a';

#10.
SELECT speciality, count(gender) from doctors group by speciality;

#11.
SELECT * from prescriptions where date_perscribed > '2012-07-31';

#12.
SELECT distinct firstName, lastName from patients inner join prescriptions where patients.pat_id = prescriptions.pat_id;

#13.
SELECT count(prescription_id) as PrescFromAudio from prescriptions where doc_id = (select doc_id from doctors where speciality = 'Audiologist');

#14.
select distinct drug_name from drugs inner join prescriptions where drugs.drug_id = prescriptions.drug_id;

#15.
select distinct drug_name from drugs where drugs.drug_id not in (select drug_id from prescriptions);
#or
select drug_name from drugs left join prescriptions on drugs.drug_id = prescriptions.drug_id where prescriptions.drug_id is null;
#or
select drug_name from drugs left join prescriptions on drugs.drug_id = prescriptions.drug_id order by prescriptions.drug_id limit 1;