SELECT year(`created`) AS 'year', month(`created`) AS 'month', COUNT(id) as 'user_registrations' 
INTO OUTFILE '/tmp/user_registrations_2014.csv'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
ESCAPED BY '\\' 
LINES TERMINATED BY '\n' 
FROM `users`
WHERE year(`created`) = 2014
GROUP BY year(`created`), month(`created`)
