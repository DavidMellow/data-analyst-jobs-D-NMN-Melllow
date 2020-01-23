---SELECT COUNT FROM data_analyst_jobs---
/*Q1*/
SELECT COUNT (*) FROM data_analyst_jobs;
/*A: 1793 */

/*Q2*/
SELECT * FROM data_analyst_jobs LIMIT 10;
/*A:  Exxon Mobile */

/*Q3*/
SELECT COUNT (*) FROM data_analyst_jobs WHERE location = 'TN';
/*A: 21 */
SELECT COUNT (*) FROM data_analyst_jobs WHERE location = 'TN'
OR location = 'KY';
/*A: 27 */

/*Q4*/
SELECT COUNT (*) FROM data_analyst_jobs WHERE location = 'TN'
AND star_rating >4;
/*A: 3 */

/*Q5*/
SELECT COUNT (*) FROM data_analyst_jobs 
WHERE review_count BETWEEN 500 AND 1000;
/*A: 151 */

/*Q6*/
SELECT location AS state, AVG (star_rating) AS avg_rating 
FROM data_analyst_jobs
WHERE star_rating IS NOT NULL
GROUP BY state ORDER BY avg_rating DESC;
/*A: NE */

/*Q7*/
SELECT DISTINCT title AS unique_title FROM data_analyst_jobs
ORDER BY unique_title;
SELECT COUNT (DISTINCT title)  FROM data_analyst_jobs;
/*A: 881*/

/*Q8*/
SELECT COUNT (DISTINCT title) FROM data_analyst_jobs
WHERE location = 'CA';
/*A: 230 */

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

/*Q10*/
SELECT company, AVG (star_rating) AS avg_star_rate 
FROM data_analyst_jobs
GROUP BY company
HAVING SUM (review_count) > 5000 
ORDER BY avg_star_rate DESC, company;
/*A: */

/*Q11*/
SELECT DISTINCT title FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%' ORDER BY title;
SELECT COUNT (DISTINCT title) FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%';
/*A: 754 */

/*Q12*/
SELECT COUNT (DISTINCT title) FROM data_analyst_jobs
WHERE NOT (title ILIKE '%Analyst%' OR title ILIKE '%Analytics%');
/*A: 802 */
SELECT title FROM data_analyst_jobs
WHERE NOT (title ILIKE '%Analyst%' OR title ILIKE '%Analytics%')
ORDER BY title;





	