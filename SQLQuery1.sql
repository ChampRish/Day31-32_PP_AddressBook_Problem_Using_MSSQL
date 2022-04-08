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

/* UC3  Insert New Contacts in AddressBook DB */
Insert into ContactsTable(FirstName,LastName,Address,City,State,ZipCode,PhoneNumber,EmailId) values 
('Rishabh','B','xyz Road','Agra','UP','282001','7906552015','rish25@mail.com'),
('Amit','M','Buliding abc','Delhi','NewDelhi','110001','6545341514','amitm@mail.com'),
('Satty','K','above showroom','Panipat','HP','411042','7894561230','sattyo@mail.com'),
('Reeta','D','Near temple','Chennai','Tamil Nadu','600005','7744112233','reetad@mail.com'),
('Jiya','G','Opp mall','Ahemdabad','Gujrat','700073','7775553330','jiyag@mail.com');

/* UC4 Edit existing contact person using their name */
UPDATE ContactsTable set State='UP' where FirstName='Rishabh' or FirstName='Amit'

/* UC5 Delete contact by name */
Delete from ContactsTable where FirstName='Jiya'

/* UC6 Retrieve Person belonging to a City or State */
SELECT * from ContactsTable where State='UP' or State='NewDelhi';

/* UC7 Count of address book by City and State */
select City,COUNT(City) as countOfCity from ContactsTable group by City order by City;
select State,COUNT(State) as countOfStates from ContactsTable group by State order by State;