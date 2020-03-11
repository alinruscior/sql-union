DECLARE @length INT = 5000000

WHILE @length <> 0
BEGIN

    DECLARE @RandomType INT = CAST(RAND() * 3 as INT)
    DECLARE @Type VARCHAR(15) = CASE WHEN @RandomType = 0 THEN 'Regular' WHEN @RandomType = 1 THEN 'Silver' ELSE 'Gold' END

    DECLARE @RandomStatus INT = CAST(RAND() * 2 as INT)
    DECLARE @Status BIT = CASE WHEN @RandomStatus = 0 THEN 0 ELSE 1 END

    INSERT INTO [dbo].[Customer]
                   ([Type]
                   ,[Status])
            VALUES
                   (@Type        --<Type, varchar(15),>
                   ,@Status        --<Status, bit,>
                   )

    SET @length = @length - 1

    PRINT @length
END
