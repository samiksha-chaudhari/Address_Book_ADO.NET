create database AddressBookSystem;
use AddressBookSystem;

create table AddressBook
(
 ID int  primary key,
 firstname varchar(100) not null,
 lastname varchar(100) not null,
 address varchar(250) not null,
 city varchar(100) not null,
 state varchar(100) not null,
 zip varchar(6) not null,
 phonenumber varchar(12) not null,
 email varchar(100) not null
);
insert into AddressBook values (1,'Samiksha ','Chaudhari','Ganesh Colony','Jalgaon','Maharatrashtra','425001','9825463584','samiksha@gmail.com')
insert into AddressBook values(2,'Nikita ','Chaudhari','Manjusha colony','Bhusawal','Maharashtra','458627','8532594239','nikita@gmail.com')
insert into AddressBook values(3,'Mayur','Patil','Karve Nagar','Pune','Maharashtra','960534','9658741236','mayur@gmail.com')
insert into AddressBook values(4,'Tanmay','Arora','Asha Nagar','Mumbai','Gujrat','768026','2546987321','tanu@gmail.com')
insert into AddressBook values(5,'Rajshri','Bole','Pastal naka','Bhoisar','Mumbai','680453','846622','Raj@gmail.com')

select * from AddressBook;

UPDATE AddressBook
SET city = 'Surat', state = 'Gujrat'
WHERE firstname = 'Tanmay';
select * from AddressBook;

DELETE FROM AddressBook WHERE firstname='Mayur'
select * from AddressBook

select firstname from AddressBook where city = 'Jalgaon' OR state = 'Maharashtra'

select COUNT(firstname) from AddressBook where city = 'Jalgaon' OR state = 'Maharashtra'

select * from AddressBook where city = 'Jalgaon' order by firstname

alter table AddressBook add Addressbookname varchar(20), type varchar(10)
update AddressBook set Addressbookname='book1', type='Friends' where city='Jalgaon'
update AddressBook set Addressbookname='book2', type='Family' where city='Mumbai'


select count(type) as 'family' from AddressBook where type='family'
select count(type) as 'friends' from AddressBook where type='friends'


select * from AddressBook

insert into AddressBook values
(6,'Jay','Bhole','socity 122','Mathura','UP','258369','1472583698','jay@gmail.com','book2','Friends');
select * from AddressBook


create table Person
(
person_id int primary key not null,
firstname varchar(50),
lastname varchar(50),
email varchar(50),
phone varchar(50),
);
select * from person
insert into Person values
(1,'Samiksha','Chaudhari','sami@gmail.com','586247698');

insert into Person values
(2,'Amol','Shivastav','amol@gmail.com','7412589632');

insert into Person values
(3,'Amit','Pal','mit@gmail.com','695471365');
select * from person


select * from AddressBook;


create proc SpAddPerson_Detail
(
@id int,
@FirstName varchar(255),
@LastName varchar(255),
@Address varchar(255),
@PhoneNumber varchar(255),
@zip int,
@City varchar(255),
@State varchar(255),
@Email varchar(255),
@AddressBookName varchar(255),
@Type varchar(255)
)
as
begin
insert into AddressBook values
(
@id,@FirstName,@LastName,@Address,@City,@State,@zip,@PhoneNumber,@Email,@AddressBookName,@Type
)
end
GO