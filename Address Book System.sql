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
ZIP int(50) unsigned not null,
PHONE_NUMBER int(50) unsigned not null); 





