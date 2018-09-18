@isTest public class TestVerifyDate 
{
   @isTest static void TestCheckDates_1()
   {
      Date x = VerifyDate.CheckDates(Date.newInstance(2000, 1, 1),Date.newInstance(2000, 1, 4));
   }
   
   @isTest static void TestCheckDates_2()
   {
      Date x = VerifyDate.CheckDates(Date.newInstance(2000,1,1), Date.newInstance(2001, 12, 31)); 
   }
}