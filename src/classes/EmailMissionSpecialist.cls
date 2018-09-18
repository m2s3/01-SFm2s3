public class EmailMissionSpecialist 
{
  //public method
  public void sendMail (String address, String subject, String body)
  {
    //Create an email message body
    Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
    String[] toAddresses = new String[] {address};
    mail.setToAddresses(toAddresses);
    mail.setSubject(subject);
    mail.setPlainTextBody(body);
    //pass this email message to the built-in sendEmail method of the Messaging class
    Messaging.SendEMailResult[] results = Messaging.sendEmail(new Messaging.SingleEmailMessage[] {mail});
    
    //call a helper method to inspect the returned results
    inspectResults(results);    
  }    
    
  public static Boolean inspectResults(Messaging.SendEMailResult[] results)
  {
      Boolean sendResult = true;
      //sendEmail returns an array of result objects. Iterate through the list to inspect results.
      //in this class, the methods send only one email, so we should have only one result. 
      for (Messaging.SendEmailResult res: results)
      {
        if (res.isSuccess()) 
          System.debug('Email sent successfully');  
        else
        {
          sendResult=false;
          System.debug('The following errors occurred: '+res.getErrors());  
        }    
      }    
      return sendResult;
  }
}