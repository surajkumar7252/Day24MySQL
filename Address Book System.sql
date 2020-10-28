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
PHONE_NUMBER varchar(250) not null); 

#UseCase 3 : Inserting New Contacts to adrressbook.

insert into addressbook(FIRST_NAME,LAST_NAME,ADDRESS,CITY,STATE,ZIP,PHONE_NUMBER) values ('Surajmal','Kumar','Madhyakunj','Dhanbad','Jharkhand',123456,9999988888);
insert into addressbook(FIRST_NAME,LAST_NAME,ADDRESS,CITY,STATE,ZIP,PHONE_NUMBER) values ('ram','Kumar','ramnagar','Mirzapur','Uttar Pradesh',654321,8888899999);
      
                    







