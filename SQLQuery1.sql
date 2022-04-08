/*UC1 to create a Address Book ServiceDB*/
create database AddressBookServiceDB

use AddressBookServiceDB

/* UC2 create a AddressBook table in the Address Book ServiceDB*/
create table ContactsTable(
Id int identity(1,1) NOT NULL PRIMARY KEY,
FirstName varchar(16) ,
LastName varchar(16),
Address varchar(24),
City varchar(16),
State varchar(16),
ZipCode varchar(6),
PhoneNumber varchar(16),
EmailId varchar(24)
);