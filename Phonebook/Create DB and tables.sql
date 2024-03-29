--USE master;
--GO


--CREATE DATABASE Phonebook_DB;



--USE Phonebook_DB;
--GO


CREATE TABLE City (
	City_ID INT PRIMARY KEY IDENTITY(1,1),
	City_Name NVARCHAR(200) NOT NULL
)


CREATE TABLE Street (
	Street_ID INT PRIMARY KEY IDENTITY(1,1),
	Street_Name NVARCHAR(200) NOT NULL UNIQUE,
)


CREATE TABLE City_Street (
	City_Street_ID INT PRIMARY KEY IDENTITY(1,1),
	City_ID INT NOT NULL FOREIGN KEY REFERENCES City(City_ID) ON DELETE CASCADE,
	Street_ID INT NOT NULL FOREIGN KEY REFERENCES Street(Street_ID) ON DELETE CASCADE
)


CREATE TABLE House (
	House_ID INT PRIMARY KEY IDENTITY(1,1),
	House_Number INT NOT NULL,
	City_Street_ID INT NOT NULL FOREIGN KEY REFERENCES City_Street(City_Street_ID) ON DELETE CASCADE,
)


CREATE TABLE Apartment (
	Apartment_ID INT PRIMARY KEY IDENTITY(1,1),
	Apartment_Number INT NOT NULL,
	House_ID INT NOT NULL FOREIGN KEY REFERENCES House(House_ID) ON DELETE CASCADE,
)


CREATE TABLE Phone (
	Phone_ID INT PRIMARY KEY IDENTITY(1,1),
	Phone_Number NVARCHAR(200) NOT NULL,
	Owner_Name NVARCHAR(200) NOT NULL,
	Apartment_ID INT NOT NULL FOREIGN KEY REFERENCES Apartment(Apartment_ID) ON DELETE CASCADE,
)