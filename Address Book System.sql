# UseCase 1 : Creating a Address Book Service DB.

create database addressbook_service;

#UseCase 2 : Creating an Address Book Table with given attributes.

use addressbook_service;
create table addressbook(
FIRST_NAME  varchar(250) Not Null ,
LAST_NAME varchar(250) Not Null,
ADDRESS varchar(250) Not Null,
CITY varchar(250) Not Null,
STATE varchar(250) Not Null,
ZIP int(250) unsigned not null,
PHONE_NUMBER varchar(250) not null,
primary key(FIRST_NAME)); 

#UseCase 3 : Inserting New Contacts to adrressbook.

insert into addressbook(FIRST_NAME,LAST_NAME,ADDRESS,CITY,STATE,ZIP,PHONE_NUMBER) values ('Surajmal','Kumar','Madhyakunj','Dhanbad','Jharkhand',123456,9999988888);
insert into addressbook(FIRST_NAME,LAST_NAME,ADDRESS,CITY,STATE,ZIP,PHONE_NUMBER) values ('ram','Kumar','ramnagar','Mirzapur','Uttar Pradesh',654321,8888899999);
 
#UseCase 4 : Editing Existing contact using their name. 

update addressbook set FIRST_NAME='Faizal' where FIRST_NAME='Ram';
update addressbook set CITY='Wasseupur' where FIRST_NAME='Faizal';

#UseCase 5 : Deleting a person using his name.

delete from addressbook where FIRST_NAME='Faizal'; 

#UseCase 6 : Retrieving person belonging to a city or state.

select * from addressbook where CITY='Dhanbad';
select * from addressbook where STATE='Jharkhand';
select FIRST_NAME from addressbook where CITY='Dhanbad'; 
select FIRST_NAME from addressbook where STATE='Jharkhand';

#UseCase 7 : Knowing the size of addressbook by city and state.

select count(CITY) from addressbook;
select count(STATE) from addressbook;

#UseCase 8 : Retrieving entries sorted alphabetically by person's name for a given city.

select * from addressbook where CITY='Dhanbad' Order by FIRST_NAME ASC;
select * from addressbook where CITY='Dhanbad' Order by FIRST_NAME DESC;

#UseCase 9 : Alter the table to include name and type column.

alter table addressbook add NAME varchar(250) not null after ZIP;
alter table addressbook add TYPE varchar(250) not null after NAME;

#UseCase 10 : Knowing the number of contact person by TYPE.

select count(TYPE) from addressbook ;

#UseCase 11 : Adding person to both Friend and Family in TYPE.

insert into addressbook(FIRST_NAME,LAST_NAME,ADDRESS,CITY,STATE,ZIP,NAME,TYPE,PHONE_NUMBER) values ('Keshav','Prasad','Kalyanpuri','Asansol','West Bengal',787654,'Keshav Kumar','Friend',7777766666);
insert into addressbook(FIRST_NAME,LAST_NAME,ADDRESS,CITY,STATE,ZIP,NAME,TYPE,PHONE_NUMBER) values ('Balram','Prasad','Mayapuri','Kolkata','West Bengal',567890,'Balram Prasad','Family',5566778899);






                    








