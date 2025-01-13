@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity Z04_R_GROCERIES
  as select from Z04AGROCERIES as GROCERIES
{
  key id as Id,
  product as Product,
  category as Category,
  brand as Brand,
  @Semantics.amount.currencyCode: 'Currency'
  price as Price,
  currency as Currency,
  quantity as Quantity,
  purchasedate as Purchasedate,
  expirationdate as Expirationdate,
  expired as Expired,
  rating as Rating,
  note as Note,
  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
  
}
