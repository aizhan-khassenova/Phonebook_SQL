--USE Phonebook_db;
--GO


--CREATE PROCEDURE dbo.Phone_Insert
--    @ApartmentID INT,
--    @PhoneNumber NVARCHAR(200),
--    @OwnerName NVARCHAR(200)
--AS
--BEGIN
--    SET NOCOUNT ON;

--    -- ��������, ���������� �� ��������
--    IF EXISTS (SELECT 1 FROM dbo.Apartment WHERE Apartment_ID = @ApartmentID)
--    BEGIN
--        -- ��������, �� ���������� �� ������ �������� � ������� Phone
--        IF NOT EXISTS (
--            SELECT 1
--            FROM dbo.Phone p
--            WHERE p.Phone_Number = @PhoneNumber
--        )
--        BEGIN
--            -- ����� �������� �� ���������� � ������� Phone, ��������� ����� ��������
--            INSERT INTO dbo.Phone (Phone_Number, Owner_Name, Apartment_ID)
--            VALUES (@PhoneNumber, @OwnerName, @ApartmentID);
--        END
--        ELSE
--        BEGIN
--            -- ����� �������� ��� ���������� � ������� Phone
--            RAISERROR('������: ������� ��� ����������', 16, 1);
--        END
--    END
--    ELSE
--    BEGIN
--        -- �������� �� ����������
--        RAISERROR('������: �������� �� �������', 16, 1);
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

--    -- ��������, ���������� �� ����� �������� � ������� Phone, �������� ������� Phone_ID
--    IF NOT EXISTS (
--        SELECT 1
--        FROM dbo.Phone p
--        WHERE p.Phone_Number = @NewPhoneNumber
--        AND p.Phone_ID != @PhoneID
--    )
--    BEGIN
--        -- ����� �������� �� ���������� � ������� Phone, ��������� ����������
--        UPDATE dbo.Phone
--        SET Phone_Number = @NewPhoneNumber, 
--            Owner_Name = @NewOwnerName
--        WHERE Phone_ID = @PhoneID;
--    END
--    ELSE
--    BEGIN
--        -- ����� �������� ��� ���������� � ������� Phone
--        RAISERROR('������: ������� ��� ����������', 16, 1);
--    END

--    SET NOCOUNT OFF;
--END


--CREATE PROCEDURE dbo.Phone_Delete
--    @PhoneID INT
--AS
--BEGIN
--    SET NOCOUNT ON;

--    -- �������� ������ �� ������� Phone
--    DELETE FROM dbo.Phone
--    WHERE Phone_ID = @PhoneID;

--    SET NOCOUNT OFF;
--END



--EXEC dbo.Phone_Insert 57, '8 705 555 5558', '����'
--EXEC dbo.Phone_Update 58, '8 705 555 5557', '����'
--EXEC dbo.Phone_Delete 49


--SELECT * FROM dbo.Phonebook_Select();