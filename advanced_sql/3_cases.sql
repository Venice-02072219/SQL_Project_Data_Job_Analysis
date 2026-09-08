/*

A CASE Expression in SQL is a way to implement conditional logic in your queries. It allows you to evaluate a series of conditions and return a specific value when a condition is met. The CASE expression can be used in SELECT, UPDATE, DELETE, and other SQL statements.

Example:

*/

SELECT
    job_title_short,
    job_location,
    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSE 'Onsite'
    END AS location_category
FROM job_postings_fact;


--How many jobs can I apply to?
SELECT
    COUNT (job_id) AS number_of_jobs,
    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSE 'Onsite'
    END AS location_category
FROM job_postings_fact
WHERE
    job_title_short  = 'Data Analyst'
GROUP BY location_category;

