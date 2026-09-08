--Create a table

CREATE TABLE job_applied(
   job_id INT,
   application_sent_date DATE,
   custom_resume BOOLEAN,
   resume_file_name VARCHAR(255),
   cover_letter_sent BOOLEAN,
   cover_letter_file_name VARCHAR(255),
   status VARCHAR(50)
);

select * from job_applied;


-- Insert data into a table
INSERT INTO job_applied (
   job_id,
   application_sent_date,
   custom_resume,
   resume_file_name,
   cover_letter_sent,
   cover_letter_file_name,
   status)
VALUES (1,'2024-02-01',true,'resume_1.pdf',true,'cover_letter_1.pdf','submitted'),
       (2,'2024-02-05',false,'resume_2.pdf',false,NULL,'interview scheduled'),
       (3,'2024-02-10',true,'resume_3.pdf',true,'cover_letter_3.pdf','ghosted'),
       (4,'2024-02-15',false,'resume_4.pdf',false,NULL,'submitted'),
       (5,'2024-02-20',true,'resume_5.pdf',true,'cover_letter_5.pdf','rejected');

select * from job_applied;

--Alter table

ALTER TABLE job_applied
ADD contact VARCHAR(50);

--Update table

UPDATE job_applied
SET contact = 'Erlich Bachman'
WHERE job_id = 1;

UPDATE job_applied
SET contact = 'Dinesh Chugtai'
WHERE job_id = 2;

UPDATE job_applied
SET contact = 'Bertram Gilfoyle'
WHERE job_id = 3;

UPDATE job_applied
SET contact = 'Jian Yang'
WHERE job_id = 4;


UPDATE job_applied
SET contact = 'Big Head'
WHERE job_id = 5;

select * from job_applied;

--Rename column

ALTER TABLE job_applied
RENAME COLUMN contact TO contact_name;

--Alter column

ALTER TABLE job_applied
ALTER COLUMN contact_name TYPE TEXT;

--Drop column

ALTER TABLE job_applied
DROP COLUMN contact_name;

--Drop Table

DROP TABLE job_applied;






