--USE Phonebook_db;
--GO


--CREATE PROCEDURE dbo.Street_Insert
--    @CityID INT,
--    @StreetName NVARCHAR(200)
--AS
--BEGIN
--    SET NOCOUNT ON;

--    -- ��������, ���������� �� �����
--    IF EXISTS (SELECT 1 FROM dbo.City WHERE City_ID = @CityID)
--    BEGIN
--        -- ����� ����������, ��������, ���������� �� ����� � ���� ������
--        IF NOT EXISTS (
--            SELECT 1
--            FROM dbo.City_Street cs
--            INNER JOIN dbo.Street s ON cs.Street_ID = s.Street_ID
--            WHERE cs.City_ID = @CityID AND s.Street_Name = @StreetName
--        )
--        BEGIN
--            -- ����� � ���� ������ ���, ��������� �����
--            INSERT INTO dbo.Street (Street_Name)
--            VALUES (@StreetName)

--            DECLARE @StreetID INT
--            SET @StreetID = SCOPE_IDENTITY() -- �������� ID ����������� �����

--            -- ��������� ������ � ������� City_Street
--            INSERT INTO dbo.City_Street (City_ID, Street_ID)
--            VALUES (@CityID, @StreetID)
--        END
--        ELSE
--        BEGIN
--            -- ����� ��� ���������� � ���� ������
--            RAISERROR('������: ����� ��� ����������', 16, 1);
--        END
--    END
--    ELSE
--    BEGIN
--        -- ����� �� ����������
--        RAISERROR('������: ����� �� ������', 16, 1);
--    END

--    SET NOCOUNT OFF;
--END



--CREATE PROCEDURE dbo.Street_Update
--    @StreetID INT,
--    @NewStreetName NVARCHAR(200)
--AS
--BEGIN
--    SET NOCOUNT ON;

--    -- ��������, ��� ����� ��� ����� �� ��������� � ������ ������ �����
--    IF NOT EXISTS (
--        SELECT 1
--        FROM dbo.Street
--        WHERE Street_Name = @NewStreetName
--        AND Street_ID != @StreetID -- ��������� ������� ����� �� ��������
--    )
--    BEGIN
--        -- ���� ����� ��� ����� �� ��������� � ������ ������, ��������� ��� ���
--        UPDATE dbo.Street
--        SET Street_Name = @NewStreetName
--        WHERE Street_ID = @StreetID;
--    END
--    ELSE
--    BEGIN
--        -- ���� ����� ��� ����� ��������� � ������ ������ �����, ������� ������
--        RAISERROR('������: ����� ��� ����������', 16, 1);
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



--EXEC dbo.Street_Insert 3, '��� ���� ����� �����15'
--EXEC dbo.Street_Update 26, '����� ������'
--EXEC dbo.Street_Delete 19


--SELECT * FROM dbo.Phonebook_Select();