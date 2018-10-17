#1.
SELECT DATEDIFF (curdate(), '1995-12-15') as Days_alive;

#2.
Update doctors set lastname = 'Moran' where firstname = 'Lily';

#3. 
Select drug_name, cost from drugs where cost = (select max(cost) from drugs);

#4. 
Select drug_name from drugs where cost = (select min(cost) from drugs);

#5. 
Select * from patients where address2 is null;

#6.
Update patients set address2 = 'Thornbury' where firstname = 'Emma';
Select * from patients;

#7.
Select round(avg(cost), 2) from drugs;

#8. 
Select count(speciality) as No_of_Docs, speciality from doctors group by speciality;

#9.
Select distinct upper(speciality) from doctors;

#10.
select count(prescription_id) as No_of_Presc from prescriptions where doc_id = (select doc_id from doctors where speciality = 'paediatrician');

#11.
select firstName, lastName from doctors inner join prescriptions where doctors.doc_id = prescriptions.doc_id and prescriptions.pat_id = '6';

#12.
select distinct firstName, lastName from patients inner join prescriptions where patients.pat_id not in (select pat_id from prescriptions);

#13.
Insert into drugs values(7, 'paracetamol', 3.10);
Select * from drugs;

#14.
select distinct drug_name from drugs inner join prescriptions where drugs.drug_id = prescriptions.drug_id;

#15.
alter table drugs add Manufacturer Varchar(20);
Select * from drugs;

#16.
update drugs set Manufacturer='GlaxoSmithKline' where drug_name in('Panadol', 'calpol');
Select * from drugs;