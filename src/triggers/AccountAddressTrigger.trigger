trigger AccountAddressTrigger on Account(before insert, before update) 
{
<<<<<<< HEAD
	for(Account a : Trigger.New)  ///
=======
	for(Account a : Trigger.New)  //
>>>>>>> 55c89c1a18eb93d5c6d5386d1db0dcd6b8d4c2d8
	{
      if ((a.BillingPostalCode != '' &&  a.BillingPostalCode != '') && (a.Match_Billing_Address__c   == true))
      {
          a.ShippingPostalCode = a.BillingPostalCode;
      }
	}
}
