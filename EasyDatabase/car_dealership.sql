create database if not exists cardealership;
use cardealership;

drop table if exists car;
drop table if exists dealership;
drop table if exists maker;
drop table if exists insurance_campany;
drop table if exists orders;
drop table if exists Customer;
drop table if exists payment;


create table Customers
(
id int not null primary key auto_increment,
firstname varchar(25),
lastname  varchar(25),
adress varchar(50),
city varchar(25),
state varchar(25)
);

create table orders
(
id int not null primary key auto_increment,
car_type int not null references cars(id),
customer_number int not null references Customer(id)
);
create table cars
( id int not null primary key auto_increment,
  car_name varchar(40),
  description varchar(40),
  price decimal(10,2),
  dearlership int not null references dealership(id),
  maker int not null references maker(id)
);

create table dealership
( id int not null primary key auto_increment,
  dealership_name varchar(25),
  location varchar(50)
);

create table maker
( id int not null primary key auto_increment,
  car_maker varchar(25)
);
create table insurance_company
(
id int not null primary key auto_increment,
insurance_company varchar(50)
);
create table payment
(
  customer_number int not null references Customers(id),
  payment_ammount decimal(10,2)
);