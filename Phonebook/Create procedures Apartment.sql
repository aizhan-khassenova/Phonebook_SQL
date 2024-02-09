USE Phonebook_db;
GO


--CREATE PROCEDURE dbo.Apartment_Insert
--    @HouseID INT,
--    @ApartmentNumber INT
--AS
--BEGIN
--    SET NOCOUNT ON;

--    -- Проверка, существует ли дом
--    IF EXISTS (SELECT 1 FROM dbo.House WHERE House_ID = @HouseID)
--    BEGIN
--        -- Дом существует, проверка, существует ли квартира в этом доме с указанным номером
--        IF NOT EXISTS (
--            SELECT 1
--            FROM dbo.Apartment a
--            WHERE a.House_ID = @HouseID
--            AND a.Apartment_Number = @ApartmentNumber
--        )
--        BEGIN
--            -- Квартира с указанным номером в этом доме не существует, вставляем квартиру
--            INSERT INTO dbo.Apartment (Apartment_Number, House_ID)
--            VALUES (@ApartmentNumber, @HouseID);
--        END
--        ELSE
--        BEGIN
--            -- Квартира с указанным номером уже существует в этом доме
--            RAISERROR('Ошибка: Квартира уже существует', 16, 1);
--        END
--    END
--    ELSE
--    BEGIN
--        -- Дом не существует
--        RAISERROR('Ошибка: Дом не найден', 16, 1);
--    END

--    SET NOCOUNT OFF;
--END



--CREATE PROCEDURE dbo.Apartment_Delete
--    @ApartmentID INT
--AS
--BEGIN
--    SET NOCOUNT ON;

--    DELETE FROM dbo.Apartment
--    WHERE Apartment_ID = @ApartmentID;

--    SET NOCOUNT OFF;
--END



--EXEC dbo.Apartment_Insert 57, 1
--EXEC dbo.Apartment_Delete 100


SELECT * FROM dbo.Phonebook_Select();