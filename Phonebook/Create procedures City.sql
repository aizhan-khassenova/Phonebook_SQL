USE Phonebook_db;
GO


--CREATE PROCEDURE dbo.City_Insert
--    @cityName NVARCHAR(200)
--AS
--BEGIN
--    SET NOCOUNT ON;

--    -- Проверка наличия города в таблице
--    IF NOT EXISTS (SELECT 1 FROM dbo.City WHERE City_Name = @cityName)
--    BEGIN
--        -- Если города нет в таблице, то добавить
--        INSERT INTO dbo.City (City_Name)
--        VALUES (@cityName);
--    END
--    ELSE
--    BEGIN
--        -- Если город уже существует, вывести ошибку
--        RAISERROR('Ошибка: Город уже существует', 16, 1);
--    END

--    SET NOCOUNT OFF;
--END



--CREATE PROCEDURE dbo.City_Update
--    @CityID INT,
--    @NewCityName NVARCHAR(200)
--AS
--BEGIN
--    SET NOCOUNT ON;

--    -- Проверка, что новое имя города не совпадает с именем другого города
--    IF NOT EXISTS (
--        SELECT 1
--        FROM dbo.City
--        WHERE City_Name = @NewCityName
--        AND City_ID != @CityID -- Исключаем текущий город из проверки
--    )
--    BEGIN
--        -- Если новое имя города не совпадает с другим городом, обновляем его имя
--        UPDATE dbo.City
--        SET City_Name = @NewCityName
--        WHERE City_ID = @CityID;
--    END
--    ELSE
--    BEGIN
--        -- Если новое имя города совпадает с именем другого города, вывести ошибку
--        RAISERROR('Ошибка: Город уже существует', 16, 1);
--    END

--    SET NOCOUNT OFF;
--END



--CREATE PROCEDURE dbo.City_Delete
--    @CityID INT
--AS
--BEGIN
--    SET NOCOUNT ON;

--    -- Удаляем город из таблицы
--    DELETE FROM dbo.City WHERE City_ID = @CityID;

--    SET NOCOUNT OFF;
--END;



--CREATE TRIGGER dbo.City_Delete_Trigger
--ON dbo.City_Street
--AFTER DELETE
--AS
--BEGIN
--    SET NOCOUNT ON;

--    DELETE FROM dbo.Street
--    WHERE dbo.Street.Street_ID IN (SELECT deleted.Street_ID FROM deleted);

--    SET NOCOUNT OFF;
--END;



--EXEC dbo.City_Insert 'Челны24'
--EXEC dbo.City_Update 53, 'Челны123'
--EXEC dbo.City_Delete 14


SELECT * FROM dbo.Phonebook_Select();