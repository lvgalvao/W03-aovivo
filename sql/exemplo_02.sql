SELECT * FROM read_csv_auto('./data/csv/daily_sales_retail_0.csv');
show tables;
CREATE TABLE daily AS FROM read_csv_auto('./data/csv/daily_sales_retail_0.csv');
show tables;

SELECT * FROM daily;