public class NewCaseListController
{
  // Controller code goes here 
  public List<Case> getNewCases()
  {
    List<Case> results = Database.query(
      'select Id, CaseNumber ' + 
      'from Case ' + 
      'where status=' + '\'New\''
    );
    return results;  
  }        
}