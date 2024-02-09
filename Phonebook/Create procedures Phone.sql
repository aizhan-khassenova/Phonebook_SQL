--USE Phonebook_db;
--GO


--CREATE PROCEDURE dbo.Phone_Insert
--    @ApartmentID INT,
--    @PhoneNumber NVARCHAR(200),
--    @OwnerName NVARCHAR(200)
--AS
--BEGIN
--    SET NOCOUNT ON;

--    -- Проверка, существует ли квартира
--    IF EXISTS (SELECT 1 FROM dbo.Apartment WHERE Apartment_ID = @ApartmentID)
--    BEGIN
--        -- Проверка, не существует ли номера телефона в таблице Phone
--        IF NOT EXISTS (
--            SELECT 1
--            FROM dbo.Phone p
--            WHERE p.Phone_Number = @PhoneNumber
--        )
--        BEGIN
--            -- Номер телефона не существует в таблице Phone, вставляем номер телефона
--            INSERT INTO dbo.Phone (Phone_Number, Owner_Name, Apartment_ID)
--            VALUES (@PhoneNumber, @OwnerName, @ApartmentID);
--        END
--        ELSE
--        BEGIN
--            -- Номер телефона уже существует в таблице Phone
--            RAISERROR('Ошибка: Телефон уже существует', 16, 1);
--        END
--    END
--    ELSE
--    BEGIN
--        -- Квартира не существует
--        RAISERROR('Ошибка: Квартира не найдена', 16, 1);
--    END

--    SET NOCOUNT OFF;
--END


--CREATE PROCEDURE dbo.Phone_Update
--    @PhoneID INT,
--    @NewPhoneNumber NVARCHAR(200),
--    @NewOwnerName NVARCHAR(200)
--AS
--BEGIN
--    SET NOCOUNT ON;

--    -- Проверка, существует ли номер телефона в таблице Phone, исключая текущий Phone_ID
--    IF NOT EXISTS (
--        SELECT 1
--        FROM dbo.Phone p
--        WHERE p.Phone_Number = @NewPhoneNumber
--        AND p.Phone_ID != @PhoneID
--    )
--    BEGIN
--        -- Номер телефона не существует в таблице Phone, выполняем обновление
--        UPDATE dbo.Phone
--        SET Phone_Number = @NewPhoneNumber, 
--            Owner_Name = @NewOwnerName
--        WHERE Phone_ID = @PhoneID;
--    END
--    ELSE
--    BEGIN
--        -- Номер телефона уже существует в таблице Phone
--        RAISERROR('Ошибка: Телефон уже существует', 16, 1);
--    END

--    SET NOCOUNT OFF;
--END


--CREATE PROCEDURE dbo.Phone_Delete
--    @PhoneID INT
--AS
--BEGIN
--    SET NOCOUNT ON;

--    -- Удаление записи из таблицы Phone
--    DELETE FROM dbo.Phone
--    WHERE Phone_ID = @PhoneID;

--    SET NOCOUNT OFF;
--END



--EXEC dbo.Phone_Insert 57, '8 705 555 5558', 'Ваня'
--EXEC dbo.Phone_Update 58, '8 705 555 5557', 'Ваня'
--EXEC dbo.Phone_Delete 49


--SELECT * FROM dbo.Phonebook_Select();