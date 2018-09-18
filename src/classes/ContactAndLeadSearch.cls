public class ContactAndLeadSearch 
{
   public static List<List<SObject>> searchContactsAndLeads (String s)
   {
     List<List<SObject>> searchList = [FIND :s in NAME FIELDS RETURNING Contact(Name WHERE FirstName = 'Smith' OR LastName='Smith'), Lead(Name where FirstName = 'Smith' OR LastName='Smith')];       
     return searchList;
   }   
}