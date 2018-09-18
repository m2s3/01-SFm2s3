public class ContactSearch 
{
   public static List<Contact> searchForContacts(String s1, String s2)
   {
      //List <Contact> lc = new List <Contact>();
      
      List <Contact> lc = [SELECT Name FROM Contact WHERE LastName =: s1 AND MailingPostalCode=:s2];
      return lc;
   }   
}