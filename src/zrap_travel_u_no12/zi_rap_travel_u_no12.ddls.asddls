@EndUserText.label: 'Travel Data'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_RAP_TRAVEL_U_NO12
  as select from /dmo/travel
  composition [0..1] of ZI_RAP_BOOKING_U_NO12 as _Booking
  association [0..1] to /dmo/agency         as _Agency   on $projection.AgencyID = _Agency.agency_id
  association [0..1] to /DMO/I_Customer     as _Customer on $projection.CustomerID = _Customer.CustomerID
  association [0..1] to I_Currency          as _Currency on $projection.CurrencyCode = _Currency.Currency
{
  key travel_id     as TravelID,
      agency_id     as AgencyID,
      customer_id   as CustomerID,
      begin_date    as BeginDate,
      end_date      as EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      booking_fee   as BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      total_price   as TotalPrice,
      currency_code as CurrencyCode,
      description   as Description,
      status        as Status,
      @Semantics.user.createdBy: true
      createdby     as Createdby,
      @Semantics.systemDateTime.createdAt: true
      createdat     as Createdat,
      @Semantics.user.lastChangedBy: true
      lastchangedby as Lastchangedby,
      @Semantics.systemDateTime.lastChangedAt: true
      lastchangedat as Lastchangedat,

      _Booking,
      _Agency,
      _Customer,
      _Currency
}
