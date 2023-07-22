--CLEANSED THE DATA(REMOVING UNECESSARY DATA COLUMNS)
SELECT [DateKey]
      ,[FullDateAlternateKey] AS Date
      --,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] AS Day
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
     -- ,[DayNumberOfMonth]
     -- ,[DayNumberOfYear]
      ,[WeekNumberOfYear] AS WeekNo
      ,[EnglishMonthName] AS Month
	   ,LEFT([EnglishMonthName],3) AS MonthShort
      --,[SpanishMonthName]
      --,[FrenchMonthName]
      ,[MonthNumberOfYear] AS Month
      ,[CalendarQuarter] AS Quarter
      ,[CalendarYear] AS Calender
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM [AdventureWorksDW2022].[dbo].[DimDate]
  WHERE CalendarYear>=2021