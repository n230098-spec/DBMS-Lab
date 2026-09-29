USE gram_panchayat_db;

SELECT c.full_name, ca.certificate_name
FROM Citizen c
JOIN Certificate_Application ca
ON c.citizen_id = ca.citizen_id;

SELECT c.full_name, po.office_name
FROM Citizen c
JOIN Certificate_Application ca
ON c.citizen_id = ca.citizen_id
JOIN Panchayat_Office po
ON c.village_name = po.village_name;

SELECT ca.application_id, c.full_name, ca.application_status
FROM Certificate_Application ca
JOIN Citizen c
ON ca.citizen_id = c.citizen_id;

SELECT c.full_name, ca.certificate_name, ca.application_date
FROM Citizen c
JOIN Certificate_Application ca
ON c.citizen_id = ca.citizen_id;

SELECT c.full_name, ca.certificate_name, po.office_name, ca.application_status
FROM Certificate_Application ca
JOIN Citizen c
ON ca.citizen_id = c.citizen_id
JOIN Panchayat_Office po
ON c.village_name = po.village_name;

SELECT c.full_name, po.office_name
FROM Citizen c
JOIN Certificate_Application ca
ON c.citizen_id = ca.citizen_id
JOIN Panchayat_Office po
ON c.village_name = po.village_name
WHERE ca.certificate_name = 'Income Certificate';

SELECT c.full_name, c.village_name, ca.application_id
FROM Citizen c
JOIN Certificate_Application ca
ON c.citizen_id = ca.citizen_id
JOIN Panchayat_Office po
ON c.village_name = po.village_name
WHERE po.office_name = 'Nuzvid';

SELECT ca.application_id, ct.certificate_name, ca.application_status
FROM Certificate_Application ca
JOIN Certificate_Type ct
ON ca.certificate_name = ct.certificate_name;

SELECT c.full_name, c.village_name, ct.certificate_name, po.office_name, ca.application_date
FROM Citizen c
JOIN Certificate_Application ca
ON c.citizen_id = ca.citizen_id
JOIN Certificate_Type ct
ON ca.certificate_name = ct.certificate_name
JOIN Panchayat_Office po
ON c.village_name = po.village_name;

SELECT c.full_name, ct.certificate_name, po.office_name, ca.application_status
FROM Certificate_Application ca
JOIN Citizen c
ON ca.citizen_id = c.citizen_id
JOIN Certificate_Type ct
ON ca.certificate_name = ct.certificate_name
JOIN Panchayat_Office po
ON c.village_name = po.village_name;

SELECT c.full_name, ca.application_id
FROM Citizen c
LEFT JOIN Certificate_Application ca
ON c.citizen_id = ca.citizen_id;

SELECT ct.certificate_name, ca.application_id
FROM Certificate_Application ca
RIGHT JOIN Certificate_Type ct
ON ca.certificate_name = ct.certificate_name;

SELECT c.full_name, ca.application_id
FROM Citizen c
LEFT JOIN Certificate_Application ca
ON c.citizen_id = ca.citizen_id
UNION
SELECT c.full_name, ca.application_id
FROM Citizen c
RIGHT JOIN Certificate_Application ca
ON c.citizen_id = ca.citizen_id;

SELECT c.full_name, ct.certificate_name
FROM Citizen c
CROSS JOIN Certificate_Type ct;

SELECT A.full_name, B.full_name, A.village_name
FROM Citizen A
JOIN Citizen B
ON A.village_name = B.village_name
AND A.citizen_id < B.citizen_id;

select c.full_name ,ct.certificate_name,ca.application_date
from citizen c
inner join certificate_application ca
on ca.citizen_id=c.citizen_id 
ct.certificate-type_id =ca.certificate_type_id ;

select c.full_name,c.village_name,ct.certificate_name,po.office_name,ca.application_date
from citizen c
inner join certificate_application ca
on ca.citizen_id =c.citizen_id
inner join certificate_type ct
on ct.certificate_type_id=ca.certificate_type_id
inner join Panchayat_office po
on po.office_id=ca.office_id;

select c.*,
       ca.*,
       ct.*,
       po.*
       from citizen c
       inner join certificate_application ca
       on ca.citizen_id =c.citizen_id 
       inner join certificate_type ct
       on ct.certificate_type_id =ca. certificate_type_id 
       inner join Panchayat_office po
       on po.office_id =ca.office_id;
       
       select c.*,
               ca.*
       from citizen c
       left join certificate_application ca
       on c.citizen_id =ca.citizen_id;
       
       select c.*,ca.*
       from citizen c
       left join certificate_application ca
       on ca.citizen_id=c.citizen_id
       union
       select c.*,ca.*
       from citizen c
       right join certificate_application ca
       on ca.citizen_id=c.citizen_id;
       
       
       
       
       

