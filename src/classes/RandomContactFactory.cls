public class RandomContactFactory 
{
   public static List<Contact> generateRandomContacts(Integer pi, String ps)
   {
      List<Contact> lCon = new List<Contact>();
      for (Integer i=0; i<pi; i++)
      {
         Contact con = new Contact (FirstName='TrailHChallengeAPEXTestData' + i, LastName=ps);
         lCon.add(con); 
      }
      return lCon; 
   }
}