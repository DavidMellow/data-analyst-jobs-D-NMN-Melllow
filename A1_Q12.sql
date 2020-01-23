/*Q12*/
SELECT COUNT (DISTINCT title) FROM data_analyst_jobs
WHERE NOT (title ILIKE '%Analyst%' OR title ILIKE '%Analytics%');
/*A: 802 */
SELECT title FROM data_analyst_jobs
WHERE NOT (title ILIKE '%Analyst%' OR title ILIKE '%Analytics%')
ORDER BY title;