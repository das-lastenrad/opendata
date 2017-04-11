SELECT `id`, `from`, `to` 
INTO OUTFILE '/tmp/rentals_2016.csv'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
ESCAPED BY '\\' 
LINES TERMINATED BY '\n' 
FROM `rentals` 
WHERE year(`from`) = 2016 and year(`to`) = 2016;

