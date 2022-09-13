/*Right: Extracts a # of characters from a string starting from the right*/
 SELECT RIGHT(website, 3) AS domain, COUNT(*) count_num
FROM accounts
GROUP BY domain 
ORDER BY count_num DESC;

SELECT LEFT(UPPER(name), 1) AS first_letter, COUNT(*) num_companies
FROM accounts
GROUP BY 1
ORDER BY 2 DESC;