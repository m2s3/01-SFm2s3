public class dummyApex_A2Query 
{
    public static List<Contact> getContact_Q01(Id recordId1, Id recordId2)  
    {    
         return [select Id, FirstName, LastName, Email, Phone From Contact  where AccountId = :recordId1 or AccountId = :recordId2 ];        
    }
}