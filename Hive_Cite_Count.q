
CREATE EXTERNAL TABLE IF NOT EXISTS cite(citing INT, cited INT)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '${INPUT}/input';


INSERT OVERWRITE DIRECTORY '${OUTPUT}/os_requests/' Select cited, count(citing) FROM cite group by cited;