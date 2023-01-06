create database employeesdb;
show databases;
use employeesdb;
drop database payroll_service1;

#DDL- CREATE

create table employee (ID int not null auto_increment, NAME varchar(45) not null,
 OCCUPATION varchar (35) not null, AGE int not null, primary key(id));
create table student (stud_id int not null, name varchar(20) not null, 
 DOA date not null);
show tables;
desc employee;
desc student;
drop table student;

#ALTER

alter table employee add DOJ date not null;

#DML -INSERT

insert into employee (NAME, OCCUPATION, AGE, DOJ) 
values ("SAHIL", "MANAGER", 35, '2020-05-05');
insert into employee (NAME, OCCUPATION, AGE, DOJ) 
values ("SUNIL", "WORKER", 26, '2021-06-02'), ("SAKSHI", "TEAM LEAD", 29, '2021-02-02');
select * from employee;

#UPDATE

update employee set NAME= "SUNAKSHI" where ID='3';
select * from employee;

#DELETE

delete from employee where NAME="SUNIL";



#INDEXEs

CREATE TABLE t_index(
col1 INT PRIMARY KEY,
col2 INT NOT NULL,
col3 INT NOT NULL,
col4 VARCHAR(20),
INDEX (col2,col3)
);

select * from t_index;


alter table employee add Email varchar(45);

select * from employee;
update employee set Email= "sahil@gmail.com" where ID= '1';
update employee set Email= "sunakshi@gmail.com" where ID= '3';

select * from employee where Email= "sahil@gmail.com";
explain select * from employee where Email = "sahil@gmail.com";
create index empindx on employee (Email);