--USE Phonebook_db;
--GO


--CREATE PROCEDURE dbo.Street_Insert
--    @CityID INT,
--    @StreetName NVARCHAR(200)
--AS
--BEGIN
--    SET NOCOUNT ON;

--    -- Проверка, существует ли город
--    IF EXISTS (SELECT 1 FROM dbo.City WHERE City_ID = @CityID)
--    BEGIN
--        -- Город существует, проверка, существует ли улица в этом городе
--        IF NOT EXISTS (
--            SELECT 1
--            FROM dbo.City_Street cs
--            INNER JOIN dbo.Street s ON cs.Street_ID = s.Street_ID
--            WHERE cs.City_ID = @CityID AND s.Street_Name = @StreetName
--        )
--        BEGIN
--            -- Улицы в этом городе нет, вставляем улицу
--            INSERT INTO dbo.Street (Street_Name)
--            VALUES (@StreetName)

--            DECLARE @StreetID INT
--            SET @StreetID = SCOPE_IDENTITY() -- Получаем ID вставленной улицы

--            -- Вставляем запись в таблицу City_Street
--            INSERT INTO dbo.City_Street (City_ID, Street_ID)
--            VALUES (@CityID, @StreetID)
--        END
--        ELSE
--        BEGIN
--            -- Улица уже существует в этом городе
--            RAISERROR('Ошибка: Улица уже существует', 16, 1);
--        END
--    END
--    ELSE
--    BEGIN
--        -- Город не существует
--        RAISERROR('Ошибка: Город не найден', 16, 1);
--    END

--    SET NOCOUNT OFF;
--END



--CREATE PROCEDURE dbo.Street_Update
--    @StreetID INT,
--    @NewStreetName NVARCHAR(200)
--AS
--BEGIN
--    SET NOCOUNT ON;

--    -- Проверка, что новое имя улицы не совпадает с именем другой улицы
--    IF NOT EXISTS (
--        SELECT 1
--        FROM dbo.Street
--        WHERE Street_Name = @NewStreetName
--        AND Street_ID != @StreetID -- Исключаем текущую улицу из проверки
--    )
--    BEGIN
--        -- Если новое имя улицы не совпадает с другой улицей, обновляем его имя
--        UPDATE dbo.Street
--        SET Street_Name = @NewStreetName
--        WHERE Street_ID = @StreetID;
--    END
--    ELSE
--    BEGIN
--        -- Если новое имя улицы совпадает с именем другой улицы, вывести ошибку
--        RAISERROR('Ошибка: Улица уже существует', 16, 1);
--    END

--    SET NOCOUNT OFF;
--END



--CREATE PROCEDURE dbo.Street_Delete
--    @StreetID INT
--AS
--BEGIN
--    SET NOCOUNT ON;

--    DELETE FROM dbo.Street
--    WHERE Street_ID = @StreetID;

--    SET NOCOUNT OFF;
--END



--EXEC dbo.Street_Insert 3, 'Еще одна улица Омска15'
--EXEC dbo.Street_Update 26, 'Улица Самары'
--EXEC dbo.Street_Delete 19


--SELECT * FROM dbo.Phonebook_Select();