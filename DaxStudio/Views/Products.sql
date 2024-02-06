
CREATE VIEW [DaxStudio].[Products] AS 
SELECT
	[Product Key] = ProductKey
	,[Product Name] = ProductName
	,[Brand] = BrandName
	,[Class] = ClassName
	,[Color] = ColorName
	,[Unit Cost] = UnitCost
	,[Unit Price] = UnitPrice
	,[Product Subcategory Key] = ProductSubcategoryKey
FROM DimProduct

GO

