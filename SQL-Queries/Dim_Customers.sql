-- Cleaned DimCustomer Table
SELECT 
	   c.[CustomerKey],
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      c.[FirstName] AS [First Name],
      -- ,[MiddleName]
      c.[LastName] AS [Last Name],
	  c.FirstName + ' ' + c.LastName AS [FULL NAME],
      --,[NameStyle] 
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      CASE c.[Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'FEMALE' END AS Gender,
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      c.[DateFirstPurchase]
      -- ,[CommuteDistance]
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] AS c
  LEFT JOIN dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey
  ORDER BY CustomerKey ASC
