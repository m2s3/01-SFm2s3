public class AccountHandler 
{
   public static Account insertNewAccount (String s)
   {  
//    ID acctID = null;
      try 
      {
  	    Account acct = new Account(Name=s);
  	    insert acct;    	
//	    acctID = acct.Id;
// 	    System.debug('ID = ' + acctID);
        return acct;    
      }
      catch (DmlException e)
      {
	    System.debug('A DML exception has occurred: ' + e.getMessage());
        return null;  
	  }
   } //!method
}//!class