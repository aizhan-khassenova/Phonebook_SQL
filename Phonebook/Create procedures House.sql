USE Phonebook_db;
GO


--CREATE PROCEDURE dbo.House_Insert
--    @StreetID INT,
--    @HouseNumber INT
--AS
--BEGIN
--    SET NOCOUNT ON;

--    -- ��������, ���������� �� �����
--    IF EXISTS (SELECT 1 FROM dbo.Street WHERE Street_ID = @StreetID)
--    BEGIN
--        -- ����� ����������, ��������, ���������� �� ��� �� ���� �����
--        IF NOT EXISTS (
--            SELECT 1
--            FROM dbo.House h
--            WHERE h.Street_ID = @StreetID
--            AND h.House_Number = @HouseNumber
--        )
--        BEGIN
--            -- ��� �� ���� ����� �� ����������, ��������� ���
--            INSERT INTO dbo.House (House_Number, Street_ID)
--            VALUES (@HouseNumber, @StreetID);
--        END
--        ELSE
--        BEGIN
--            -- ��� ��� ���������� �� ���� �����
--            RAISERROR('������: ��� ��� ����������', 16, 1);
--        END
--    END
--    ELSE
--    BEGIN
--        -- ����� �� ����������
--        RAISERROR('������: ����� �� �������', 16, 1);
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