trigger AccountAddressTrigger on Account(before insert, before update) 
{
	for(Account a : Trigger.New) //a
	{
      if ((a.BillingPostalCode != '' &&  a.BillingPostalCode != '') && (a.Match_Billing_Address__c   == true))
      {
          a.ShippingPostalCode = a.BillingPostalCode;
      }
	}
}
