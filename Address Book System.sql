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




                    








