
CREATE VIEW [DaxStudio].[ProductSubcategory] AS
SELECT
	[Subcategory Key] = ProductSubCategoryKey
	,[Subcategory Label] = ProductSubcategoryLabel
	,[Subcategory] = ProductSubcategoryName
	,[Category Key] = ProductCategoryKey
FROM DimProductSubcategory

GO

