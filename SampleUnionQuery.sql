SELECT TOP(1)
         [Type], [Status]
        FROM [dbo].[Customer] 
         WHERE [Type] = 'Gold' AND [Status] = 0

        UNION

        SELECT TOP(1)
         [Type], [Status]
        FROM [dbo].[Customer]
         WHERE [Type] = 'Gold' AND [Status] = 1

        UNION

        SELECT TOP(1)
         [Type], [Status]
        FROM [dbo].[Customer] 
         WHERE [Type] = 'Silver' AND [Status] = 0

        UNION

        SELECT TOP(1)
         [Type], [Status]
        FROM [dbo].[Customer]
         WHERE [Type] = 'Silver' AND [Status] = 1

        UNION

        SELECT TOP(1)
         [Type], [Status]
        FROM [dbo].[Customer] 
         WHERE [Type] = 'Regular' AND [Status] = 0

        UNION

        SELECT TOP(1)
         [Type], [Status]
        FROM [dbo].[Customer]
          WHERE [Type] = 'Regular' AND [Status] = 1
