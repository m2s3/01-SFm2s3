global class MyHWWS {
  
   webservice String area; 
   webservice String region; 
   
   //Define an object in apex that is exposed in apex web service
   global class Plan {
      webservice String name;
   webservice List <String> lst1 = new List <String>{'a' , 'b' , 'c'};
/*    webservice Integer planNumber;
      webservice Date planningPeriod;
      webservice Id planId;
*/
   }

   webservice static Plan createAccountPlan(Plan vPlan) {
       
       //A plan maps to the Account object in salesforce.com. 
       //So need to map the Plan class object to Account standard object
/*
       Account acct = new Account();
       acct.Name = vPlan.name;
       acct.AccountNumber = String.valueOf(vPlan.planNumber);
       insert acct;
       vPlan.planId=acct.Id;
*/
       vPlan.name='Hello ' + vPlan.name;

       return vPlan;
  }
  

}