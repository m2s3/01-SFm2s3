trigger AccountDeletion on Account (before delete) 
{
  //Prevent the deletion of accounts if they have related opportunities.
  for (Account a : [select Id from Account 
                      where Id in : Trigger.old and Id in (select AccountId from Opportunity)])
  {
      Trigger.oldMap.get(a.Id).addError('Cannot delete account with related opportunities');
  }   
    
}