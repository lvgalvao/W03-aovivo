-- lê todos os arquivos com nome terminando em ".csv" na pasta "./data/csv"
SELECT * FROM read_csv_auto('./data/csv/*.csv');

-- lê todos os arquivos com nome terminando em ".csv", em qualquer profundidade na pasta "./data"
SELECT * FROM read_csv_auto('../data/**/*.csv');

-- lê arquivos específicos de uma lista
SELECT * FROM read_csv_auto(['./data/csv/daily_sales_retail_0.csv', './data/segundo_csv/daily_sales_retail_7.csv']);

-- lê todos os arquivos com nome terminando em ".csv" na pasta "./data/csv"
SELECT * FROM read_csv_auto('./data/csv/*.csv', filename=true);

-- Se deseja criar uma tabela com esses dados, pode fazer da seguinte forma:
CREATE TABLE transactions AS SELECT * FROM read_csv_auto('./data/csv/*.csv', filename=true);

-- Para exibir as tabelas existentes
show tables;

-- Para exibir as tabelas existentes
.open 'datawarehouse.duckdb'

-- Se quiser exportar nossa saída
COPY transacoes TO './data/output.csv' (HEADER, DELIMITER ',');