USE Phonebook_db;
GO


--CREATE PROCEDURE dbo.House_Insert
--    @StreetID INT,
--    @HouseNumber INT
--AS
--BEGIN
--    SET NOCOUNT ON;

--    -- Проверка, существует ли улица
--    IF EXISTS (SELECT 1 FROM dbo.Street WHERE Street_ID = @StreetID)
--    BEGIN
--        -- Улица существует, проверка, существует ли дом на этой улице
--        IF NOT EXISTS (
--            SELECT 1
--            FROM dbo.House h
--            WHERE h.Street_ID = @StreetID
--            AND h.House_Number = @HouseNumber
--        )
--        BEGIN
--            -- Дом на этой улице не существует, вставляем дом
--            INSERT INTO dbo.House (House_Number, Street_ID)
--            VALUES (@HouseNumber, @StreetID);
--        END
--        ELSE
--        BEGIN
--            -- Дом уже существует на этой улице
--            RAISERROR('Ошибка: Дом уже существует', 16, 1);
--        END
--    END
--    ELSE
--    BEGIN
--        -- Улица не существует
--        RAISERROR('Ошибка: Улица не найдена', 16, 1);
--    END

--    SET NOCOUNT OFF;
--END



--CREATE PROCEDURE dbo.House_Delete
--	@HouseID INT
--AS
--BEGIN
--	SET NOCOUNT ON;

--    DELETE FROM dbo.House
--    WHERE House_ID = @HouseID;

--    SET NOCOUNT OFF;
--END



--EXEC dbo.House_Insert 26, 1
--EXEC dbo.House_Delete 56


SELECT * FROM dbo.Phonebook_Select();