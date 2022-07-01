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
