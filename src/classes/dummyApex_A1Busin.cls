public class dummyApex_A1Busin 
{    
    public static void getContacts(Id recordId1, Id recordId2) 
    { 
/*
         List<Contact> lstContact = new List<Contact>();
         lstContact = dummyApex_A2Query.getContact_Q01(recordId); 
         System.debug('lstContact='+ lstContact);
*/
         List<Contact> lstContact = dummyApex_A2Query.getContact_Q01(recordId1, recordId2);
         System.debug('lstContact='+ lstContact);
   
        
    }
}