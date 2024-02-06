
CREATE VIEW [DaxStudio].[ProductCategory]
AS
SELECT
	[Category Key] = ProductCategoryKey
	,[Category] = ProductCategoryName
	,[Category Label] = ProductCategoryLabel
FROM DimProductCategory

GO

