USE Phonebook_DB;
GO


--CREATE FUNCTION dbo.Phonebook_Select()
--RETURNS TABLE
--AS
--RETURN (
--    SELECT 
--        City.City_ID, City.City_Name,
--		Street.Street_ID, Street.Street_Name,
--		House.House_ID, House.House_Number,
--		Apartment.Apartment_ID, Apartment.Apartment_Number,
--		Phone.Phone_ID, Phone.Phone_Number, Phone.Owner_Name
--         Добавьте другие столбцы с уникальными именами по мере необходимости
--    FROM City

--    FULL JOIN City_Street
--    ON City.City_ID = City_Street.City_ID

--    FULL JOIN Street
--    ON Street.Street_ID = City_Street.Street_ID

--    FULL JOIN House
--    ON Street.Street_ID = House.Street_ID

--    FULL JOIN Apartment
--    ON House.House_ID = Apartment.House_ID

--    FULL JOIN Phone
--    ON Apartment.Apartment_ID = Phone.Apartment_ID
--);

SELECT * FROM dbo.Phonebook_Select();


--CREATE FUNCTION dbo.GetPhoneOwnersByCityAndStreet(@CityID INT)
--RETURNS TABLE
--AS
--RETURN (
--    SELECT c.City_Name, s.Street_Name, STRING_AGG(p.Owner_Name, ', ') AS Owners
--    FROM Phone p

--    INNER JOIN Apartment a
--    ON p.Apartment_ID = a.Apartment_ID

--    INNER JOIN House h
--    ON a.House_ID = h.House_ID

--    INNER JOIN City_Street cs
--    ON h.Street_ID = cs.Street_ID

--    INNER JOIN City c
--    ON cs.City_ID = c.City_ID

--    INNER JOIN Street s
--    ON cs.Street_ID = s.Street_ID

--    WHERE c.City_ID = @CityID -- Добавляем условие для фильтрации по айди города

--    GROUP BY s.Street_Name, c.City_Name
--);

--DECLARE @CityID INT = 2;
--SELECT * FROM dbo.GetPhoneOwnersByCityAndStreet(@CityID);


--CREATE FUNCTION dbo.GetStreetNameByHouseID(@HouseID INT)
--RETURNS NVARCHAR(200)
--AS
--BEGIN
--    DECLARE @StreetName NVARCHAR(200)

--    SELECT @StreetName = s.Street_Name, @HouseID = h.House_ID
--    FROM House h
--    INNER JOIN City_Street cs ON h.Street_ID = cs.Street_ID
--    INNER JOIN Street s ON cs.Street_ID = s.Street_ID
--    WHERE h.House_ID = @HouseID

--    RETURN @StreetName
--END;

--DECLARE @HouseID INT = 2;
--SELECT dbo.GetStreetNameByHouseID(@HouseID) AS StreetName;



--CREATE LOGIN TestLogin WITH PASSWORD = '1234User!';
--CREATE USER TestUser FOR LOGIN TestLogin;