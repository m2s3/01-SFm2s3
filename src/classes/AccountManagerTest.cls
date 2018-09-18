@IsTest
private class AccountManagerTest 
{ 
     // Helper method
     static Id createAccTestRecord() 
     {
          // Create test record
          Account accTest = new Account(Name='ZZZ', NVG_AreaDeInfluencia__c='Aveiro');
          insert accTest;
          return accTest.Id;
     }          
    
     @isTest static void testgetAccount() 
     {
          Id recordId = createAccTestRecord();
          
          Contact oContX = new Contact();
          oContX.LastName = 'ContactNameX';
          oContX.AccountId = recordId ;
          insert oContX ;
          Contact oContY = new Contact();
          oContY .LastName = 'ContactNameY';
          oContY .AccountId = recordId ;
          insert oContY;
          // Set up a test request
          RestRequest request = new RestRequest();
          request.requestUri = 'https://yourInstance.salesforce.com/services/apexrest/Accounts/'  + recordId + '/contacts' ;
          request.httpMethod = 'GET';
          RestContext.request = request;
          // Call the method to test
          Account thisAccount = AccountManager.getAccount();
          // Verify results
          System.assert(thisAccount != null);
          System.assertEquals('ZZZ', thisAccount.Name);
         
     }
}