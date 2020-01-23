/*Q9*/
SELECT company, ROUND (AVG(star_rating),3) 
FROM data_analyst_jobs
WHERE company IS NOT NULL
GROUP BY company HAVING SUM (review_count) > 5000;

SELECT company, ROUND(AVG(star_rating),3)
AS avg_star_rating
FROM data_analyst_jobs
WHERE location IS NOT NULL
GROUP BY company, review_count
HAVING SUM (review_count) >5000
ORDER BY avg_star_rating DESC;

SELECT COUNT (DISTINCT company)  
FROM data_analyst_jobs WHERE review_count > 5000;
/*A: 40 */