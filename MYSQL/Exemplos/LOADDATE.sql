LOAD DATA LOCAL INFILE 'C:/Users/kassi/Desktop/dataset/likes.csv'
INTO TABLE mario.likes FIELDS TERMINATED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

CREATE table likes(
catch DATE,	
id	 INT,
player TEXT
);

set global local_infile=true;