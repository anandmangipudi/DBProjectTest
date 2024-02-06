
CREATE VIEW [DaxStudio].[Store] AS 
SELECT 
	[Store Key] = StoreKey,
      [Geography Key] = [GeographyKey]
      ,[Store Manager] = [StoreManager]
      ,[Store Type] = [StoreType]
      ,[Store Name] = [StoreName]
      ,[Store Description] = [StoreDescription]
      ,[Status]
      ,[Open Date] = [OpenDate]
      ,[Close Date] = [CloseDate]
      ,[Entity Key] = [EntityKey]
      ,[Zip Code] = [ZipCode]
      ,[Zip Code Extension] = [ZipCodeExtension]
      ,[Store Phone] = [StorePhone]
      ,[Store Fax] = [StoreFax]
      ,[Address Line 1] = [AddressLine1]
      ,[Address Line 2] = [AddressLine2]
      ,[Close Reason] = [CloseReason]
      ,[Employee Count] = [EmployeeCount]
      ,[Selling Area Size] = [SellingAreaSize]
      ,[Last Remodel Date] = [LastRemodelDate]
      ,[Geo Location] = [GeoLocation]
      ,[Geometry]
      ,[ETLLoadID]
      ,[LoadDate]
      ,[UpdateDate]
FROM DimStore

GO

