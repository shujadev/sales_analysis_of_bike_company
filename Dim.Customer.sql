SELECT [CustomerKey]
    --  ,[GeographyKey]
     -- ,[CustomerAlternateKey]
      --,[Title]
      ,[FirstName] AS [First Name]
      --,[MiddleName] AS [Middle Name]
      ,[LastName] AS [Last Name],
	  concat(FirstName,LastName) AS [Full Name],            --USED CONCAT FOR FULL NAME
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      CASE [Gender] WHEN  'M' THEN 'Male'
	  WHEN 'F' THEN 'Female'
	  END AS Gender
   --   ,[EmailAddress]
     -- ,[YearlyIncome]
   --   ,[TotalChildren]
     -- ,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
   --   ,[AddressLine1]
    --  ,[AddressLine2]
      --,[Phone]
      ,[DateFirstPurchase] AS [Date of First Purchase]
     -- ,[CommuteDistance]
	 ,g.city AS City
  FROM dbo.DimCustomer AS c
  LEFT JOIN dbo.DimGeography AS g ON
 g.GeographyKey=c.GeographyKey
 --Added City suing Left Join
  ORDER BY CustomerAlternateKey
  --Ordered as per Customer Key
