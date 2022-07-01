--------Welcome to AddressBook Databases---------

---UC1--Creating data base---
create database AddressBookService;
USE AddressBookService;

---UC2--Creating table-------
CREATE TABLE addressbook(
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    address VARCHAR(100) NOT NULL,
    city VARCHAR(20) NOT NULL,
    state VARCHAR(20) NOT NULL,
    zip INT NOT NULL,
    phone_no VARCHAR(15) NOT NULL,
    email VARCHAR(50) NOT NULL,
);

---UC3--Insert data----------
INSERT INTO addressbook (first_name,last_name,address,city,state,zip,phone_no,email)
    VALUES('Vladimir','Putin','3/40, Broadway Street','Moscow','Narnia',989001,'2354618524','v.putin@gmail.com'),
        ('Sherlock','Holmes','Baker Street','London','England',567897,'7654874','sherlocked@gmail.com');

---UC4--Edit existing contact using name-----------
UPDATE addressbook SET zip=786532 
    WHERE first_name='Sherlock' AND last_name='Holmes';
SELECT * FROM addressbook;

---UC5--Delete contact using person name-----------
DELETE FROM addressbook WHERE first_name='Vladimir' AND last_name='Putin';
SELECT * FROM addressbook;

---UC6--Retrieve a person from city or state-------
SELECT first_name,last_name FROM addressbook 
    WHERE city='london' OR  state='Las Angeles';

---UC7--Count of address book by city and state----
SELECT COUNT(city) AS COUNT_OF_ADDRESS_BOOK
    FROM addressbook WHERE city='london' AND state='england';

---UC8--RETRIEVE ENTRIES ALPHABETICALLY BY NAME FOR A CITY----------
INSERT INTO addressbook (first_name,last_name,address,city,state,zip,phone_no,email)
    VALUES('Vladimir','Putina','3/40 Broadway Street','Moscow','Narnia',45001,'235461','v.putin@gmail.com'),
            ('Jake','Peralta','99 Precinct','New York','USA',25679,'911','j.pera@gmail.com');
SELECT * FROM addressbook;
INSERT INTO addressbook (first_name,last_name,address,city,state,zip,phone_no,email)
    VALUES('keya','lutina','yenyen','Hiroshima','japan',450981,'239871','ke.lut@gmail.com');
INSERT INTO addressbook (first_name,last_name,address,city,state,zip,phone_no,email)
    VALUES('rosa','lopa','andheri','New York','Narnia',25679,'235461','rosa@gmail.com');

SELECT first_name,last_name FROM addressbook
    WHERE city='new york'
        ORDER By first_name asc;

---UC9--Alter to add name and type------------
ALTER TABLE AddressBook
ADD BookName VARCHAR(50), BookType VARCHAR(50);

UPDATE addressbook SET BookName='Book1', BookType='Family' WHERE last_name='lopa'; 
UPDATE addressbook SET BookName='Book2', BookType='Friends' WHERE first_name='keya' OR first_name='Jake';
UPDATE addressbook SET BookName='book3', BookType='Profession' WHERE first_name='Sherlock';
UPDATE addressbook SET BookName='book3', BookType='Profession' WHERE first_name='Vladimir';
SELECT * FROM addressbook;
