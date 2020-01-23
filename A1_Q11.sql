/*Q11*/
SELECT DISTINCT title FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%' ORDER BY title;
SELECT COUNT (DISTINCT title) FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%';
/*A: 754 */