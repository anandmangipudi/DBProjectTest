
CREATE VIEW [DaxStudio].[Sales]
AS
SELECT
	[Online Sales Key] = OnlineSalesKey
	,[Order Date] = CAST(DateKey AS DATE )
	,[Store Key] = StoreKey
	,[Product Key] = ProductKey
	,[Promotion Key] = PromotionKey
	,[Currency Key] = CurrencyKey
	,[Customer Key] = CustomerKey
	,[Sales Order Number] = SalesOrderNumber
	,[Sales Order Line Number] = SalesOrderLineNumber
	,[Unit Price] = UnitPrice
	,[Unit Discount] = DiscountAmount
	,[Unit Cost] = UnitCost
	,[Net Price] = UnitPrice - DiscountAmount
	,[Quantity] = 
		CAST(ProductKey % CEILING (
			SalesQuantity + 
				CASE 
					WHEN CustomerKey < 18761 THEN 
						0.08 * CONVERT ( INTEGER, ( CustomerKey % ( DiscountAmount + 11 )/ 7 ) + 1)
					WHEN CustomerKey >= 18761 THEN
						0.03 * CONVERT ( INTEGER, (( OnlineSalesKey + CustomerKey + ProductKey ) % 8 ) )
				END
		) AS INTEGER) + 1
	,[Return Quantity] = ReturnQuantity
	,[Return Amount] = ReturnAmount
	,[Total Cost] = TotalCost
	,ETLLoadID, LoadDate, UpdateDate
FROM 
	FactOnlineSales
WHERE 
	SalesQuantity > 0

GO

