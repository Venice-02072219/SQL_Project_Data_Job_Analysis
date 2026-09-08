/*

UNION Operators

Combine the results of two or more SELECT statements into a single result set. 

The UNION operator selects only distinct values by default, 
while UNION ALL includes all values, including duplicates.

Note: Each SELECT statement within the UNION must have the same number of columns 
in the result sets with similar data types.

*/


--Get jobs and companies from January

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    jan_jobs

UNION

--Get jobs and companies from February
SELECT
    job_title_short,
    company_id,
    job_location
FROM
    feb_jobs

UNION
--Get jobs and companies from March
SELECT
    job_title_short,
    company_id,
    job_location
FROM
    mar_jobs
