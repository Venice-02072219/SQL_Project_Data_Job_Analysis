--Subqueries and Common Table Expressions (CTEs) are powerful tools in SQL that allow you to break down complex queries into simpler, more manageable parts.
--Subqueries are used for simpler queries
--CTEs are temporary result sets that can be referenced within a SELECT, INSERT, UPDATE, or DELETE statement. They can help improve the readability and maintainability of your SQL code.



--Subqueries - it can be used in SELECT, FROM and WHERE clauses.

SELECT *
FROM (
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 1
) AS january_jobs;


SELECT
    company_id,
    name AS company_name
FROM 
    company_dim
WHERE company_id IN (
    SELECT
        company_id
    FROM
        job_postings_fact
    WHERE
        job_no_degree_mention = TRUE
)



/*

CTEs are temporary result sets that can be referenced within a SELECT, INSERT, 
UPDATE, or DELETE statement. They can help improve the readability and maintainability
of your SQL code.

*/

WITH january_jobs AS (-- CTE definition starts here
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 1
)

SELECT * FROM january_jobs;


/* 

Find the companies that have the most job openings.
Get the total number of job postings per company id (job postings fact)
Return the total number of jobs with the company name (company dim)

*/


WITH company_job_count AS (
    SELECT
        company_id,
        COUNT(*) AS total_jobs
    FROM
        job_postings_fact
    GROUP BY
        company_id;
)

SELECT *
FROM company_job_count;



WITH company_job_count AS (
    SELECT
        company_id,
        COUNT(*) AS total_jobs
    FROM
        job_postings_fact
    GROUP BY
        company_id
)

SELECT
    company_dim.name AS company_name,
    company_job_count.total_jobs
FROM
    company_dim
LEFT JOIN
    company_job_count ON company_job_count.company_id = company_dim.company_id
ORDER BY
    total_jobs DESC;




