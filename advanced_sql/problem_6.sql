/*

Practice Problem 6

Question:

•   Create three tables
    •   Jan 2023 jobs
    •   Feb 2023 jobs
    •   Mar 2023 jobs
• Foreshadowing: This will be used in another practice problem below.
• Hints:
    • Use CREATE TABLE table_name AS syntax to create your table
    • Look at a way to filter out only specific months (EXTRACT)

*/

-- January
CREATE TABLE jan_jobs AS
    SELECT * FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 1;

-- February
CREATE TABLE feb_jobs AS
    SELECT * FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 2;

-- March
CREATE TABLE mar_jobs AS
    SELECT * FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 3;

SELECT job_posted_date
FROM mar_jobs;
