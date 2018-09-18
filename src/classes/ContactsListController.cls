public class ContactsListController 
{
  // Controller code goes here 
  private String sortOrder = 'LastName';
    
  public List<Contact> getContacts()
  {
    List<Contact> results = Database.query(
      'select Id, FirstName, LastName, Title, Email ' + 
      'from Contact ' + 
      'order by ' + sortOrder + ' asc  ' + 'limit 10'
    );
    return results;  
  }   
    
  public void sortByLastName() {
    this.sortOrder = 'LastName';
  }
  
  public void sortByFirstName() {
    this.sortOrder = 'FirstName';
  }
}