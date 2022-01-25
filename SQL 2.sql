/*
SQL Null Values
SQL update statement
SQL Delete Statement
SQL Alter Table
-- Add columns in existing columns
-- Alter Table-Drop Column
*/
# Create Database Customer
create database customer;
use customer;
# Create customer_info table 
create table customer_info(
id integer auto_increment, # constraint ie. at new statements the id will be auto incremented
first_name varchar(25),
last_name varchar(25),
salary integer,
primary key(id) # in order to support the auto increment, all the values in "id" column will be unique
);
show tables;
select * from customer_info;
# Insert records in customer_info table
insert into customer_info(first_name, last_name, salary)
values
("Krishna", "Yadav", 99000),
("Balaram", "Yadav", 98000),
("Mukund", "Vrsni", 98080),
("Vasudeva", "Bhagavan", 98990),
("Guru", "Das", NULL); # Null means missing values, not 0 value

# How to extract the null values from the table
select * from customer_info where salary is NULL;
select * from customer_info where salary is not NULL;

update customer_info set salary = 50000 where id = 5;
select * from customer_info;

# Delete Statement
delete from customer_info where id = 5;
select * from customer_info;

# SQL alter table
# Add column in existing table
alter table customer_info add email varchar(30);
select * from customer_info;

update customer_info set email = "Gokula@gmail.com" where id = 1;
update customer_info set email = "Yadav@gmail.com" where id = 2;
update customer_info set email = "Tulsivan@gmail.com" where id = 3;
update customer_info set email = "Yamuna@gmail.com" where id = 4;
update customer_info set email = "Vaikuntha@gmail.com" where id = 5;

delete from customer_info where id > 6;
select * from customer_info;

alter table customer_info add DOB date;
# Modify table dob column
alter table customer_info modify dob year;

# See the schema
desc customer_info;

# Alter table to drop column
alter table customer_info drop column dob;
select * from customer_info;