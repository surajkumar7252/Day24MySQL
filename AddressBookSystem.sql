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

#UseCase12 : ER diagram of the databse after creating a table for composite address field.

create table addressbookmanager(
ADDRESS_ID int unsigned auto_increment not null,
ADDRESS_NAME varchar(250) not null,
primary key (ADDRESS_ID)
);


insert into addressbookmanager (ADDRESS_NAME) values ('Address Book 1');
insert into addressbookmanager (ADDRESS_NAME) values ('Address Book 2');


create table contact(
ID int unsigned not null auto_increment,
FIRST_NAME varchar(250) not null,
LAST_NAME varchar(250) not null,
TYPE varchar(100) not null,
primary key (ID),
foreign key (ID) references addressbookmanager(ADDRESS_ID)
);

insert into contact(ID, TYPE,FIRST_NAME,LAST_NAME) values ('1', 'Family','Shravan','Kumar');
insert into contact(ID, TYPE,FIRST_NAME,LAST_NAME) values('2', 'Family','Munna','Kumar');


create table address(
ADDRESS_ID int unsigned not null,
CITY varchar(250) not null,
STATE varchar(250) not null,
ZIP int unsigned not null,
foreign key (ADDRESS_ID) references contact(ID)
);

insert into address(ADDRESS_ID, CITY,STATE,ZIP) values (1, 'Dhanbad','Jharkhand',110011);
insert into address(ADDRESS_ID, CITY,STATE,ZIP) values (2, 'Gaya','Bihar',120012);
insert into address(ADDRESS_ID, CITY,STATE,ZIP) values (3, 'Dhanbad','Jharkhand',110011);


create table details(
PERSONAL_ID int unsigned not null,
EMAIL_ID varchar(250) not null,
PHONE_1 varchar(250) not null,
PHONE_2 varchar(250) not null,
foreign key (PERSONAL_ID) references contact(ID)
);

insert into details (PERSONAL_ID, EMAIL_ID,PHONE_1,PHONE_2) values
(1, 'srk2233@gmail.com',8765432171,1987326556 );
insert into details (PERSONAL_ID, EMAIL_ID,PHONE_1,PHONE_2) values
(2, 'kkr2233@gmail.com',87654552171,19873776656 );
insert into details (PERSONAL_ID, EMAIL_ID,PHONE_1,PHONE_2) values
(3, 'star2233@gmail.com',876548899171,17887326556 );





                    








