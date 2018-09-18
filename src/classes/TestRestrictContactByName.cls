@isTest private class TestRestrictContactByName 
{
   @isTest static void Test1()
   {
           Contact con = new Contact (FirstName='FN_challengeTrig', LastName='INVALIDNAME');
           insert con; 
   }
}