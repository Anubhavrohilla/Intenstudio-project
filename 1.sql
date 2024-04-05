C:\ProgramData\MySQL\MySQL Server 8.0\Uploads
create database retailsalesdata;
use retailsalesdata;

create table Sales_Data_Transaction( customer_id varchar(255), 
trans_date varchar(255), trans_amount int);

drop table Sales_Data_Transaction;

create table Sales_Data_Response( customer_id varchar(255) , response int);

drop table Sales_Data_Response;

load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Retail_Data_Transactions.csv'
into table Sales_Data_Transaction
fields terminated by ','
lines terminated by'\n'
ignore 1 rows;


explain select * from Sales_Data_Transaction where customer_id ='CS5295';
create index  idx_id  on Sales_Data_Transaction(customer_id);
explain select * from Sales_Data_Transaction where customer_id ='CS5295';
