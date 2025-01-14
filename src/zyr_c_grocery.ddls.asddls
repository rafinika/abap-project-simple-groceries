@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZYR_C_GROCERY
  provider contract transactional_query
  as projection on ZYR_R_GROCERY
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
  @Search.defaultSearchElement: true
  Expirationdate,
  @Search.defaultSearchElement: true
  Expired,
  @Search.defaultSearchElement: true
  Rating,
  Note,
  Createdby,
  Createdat,
  Lastchangedby,
  Lastchangedat,
  Locallastchanged
  
}
