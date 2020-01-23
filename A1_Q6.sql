/*Q6*/
SELECT location AS state, AVG (star_rating) AS avg_rating 
FROM data_analyst_jobs
WHERE star_rating IS NOT NULL
GROUP BY state ORDER BY avg_rating DESC;
/*A: NE */