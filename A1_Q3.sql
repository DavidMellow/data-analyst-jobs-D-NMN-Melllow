/*Q3*/
SELECT COUNT (*) FROM data_analyst_jobs WHERE location = 'TN';
/*A: 21 */
SELECT COUNT (*) FROM data_analyst_jobs WHERE location = 'TN'
OR location = 'KY';
/*A: 27 */