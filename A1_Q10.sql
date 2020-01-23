/*Q10*/
SELECT company, AVG (star_rating) AS avg_star_rate 
FROM data_analyst_jobs
GROUP BY company
HAVING SUM (review_count) > 5000 
ORDER BY avg_star_rate DESC, company;
/*A: */