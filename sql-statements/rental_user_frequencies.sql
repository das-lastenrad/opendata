SELECT `rental_count`, COUNT(`rental_count`) as `user_freqency` 
INTO OUTFILE '/tmp/rental_user_frequencies_2014.csv'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
ESCAPED BY '\\' 
LINES TERMINATED BY '\n' 
FROM (
  SELECT `user`, COUNT(`user`) AS `rental_count` 
  FROM `rentals` 
  WHERE year(`from`) = 2014 and year(`to`) = 2014 
  GROUP BY `user` order by `rental_count` DESC) AS `user_counts`
GROUP BY `rental_count`;


