@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
define root view entity Z04_C_GROCERIES
  provider contract transactional_query
  as projection on Z04_R_GROCERIES
{
  key Id,
  @Search.defaultSearchElement: true
  Product,
  @Search.defaultSearchElement: true
  Category,
  @Search.defaultSearchElement: true
  Brand,
  Price,
  @Semantics.currencyCode: true
  Currency,
  Quantity,
  Purchasedate,
  Expirationdate,
  Expired,
  Rating,
  Note,
  LocalCreatedBy,
  LocalCreatedAt,
  LocalLastChangedBy,
  LocalLastChangedAt,
  LastChangedAt
  
}
