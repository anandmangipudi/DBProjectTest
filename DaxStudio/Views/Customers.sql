
CREATE VIEW [DaxStudio].[Customers] 
AS
SELECT
	[Customer Key] = CustomerKey
	,[Customer Name] = 
		CASE 
			WHEN 
				FirstName IS NULL AND LastName IS NULL 
				THEN CONCAT('Organization', ' ', CAST([CustomerKey] AS NVARCHAR))
			ELSE 
				CONCAT(FirstName, ' ', LastName)
		END
	,[DOB] = BirthDate
	,[Marital Status] = MaritalStatus
	,Gender
	,[Email Address] = EmailAddress
	,[Yearly Income] = YearlyIncome
	,[Total Children] = TotalChildren
	,Education
	,Occupation
	,[Customer Type] = CustomerType
	,[Company Name] = CompanyName
FROM DimCustomer

GO

