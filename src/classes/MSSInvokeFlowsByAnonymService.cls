public class MSSInvokeFlowsByAnonymService {

    /****************************************************************************
    * Hello World example - call the Flow named "ReturnHelloWorld"
    *****************************************************************************
    Map<String, Object> params = new Map<String, Object>();
	Flow.Interview.ReturnHelloWorld helloWorldFlow = new Flow.Interview.ReturnHelloWorld(params);
	helloWorldFlow.start();
 
	// Obtain the results
	String returnValue = (String) helloWorldFlow.getVariableValue('ReturnValue');
	System.debug('Flow returned ' + returnValue);

    //prints: 11:18:02.684 (684085568)|USER_DEBUG|[13]|DEBUG|Flow returned Hello from the Flow World!
    - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
    
    
    /****************************************************************************
    * Calc example - call the Flow named "Calc"
    *****************************************************************************
    Map<String, Object> params = new Map<String, Object>();
	params.put('X', 10);
	params.put('Y', 5);
	Flow.Interview.Calc calcFlow = new Flow.Interview.Calc(params);
	calcFlow.start();
 
	// Obtain the results
	Double returnValue = (Double) calcFlow.getVariableValue('ReturnValue');
	System.debug('Flow returned ' + returnValue);

    //prints: 12:09:55.190 (190275787)|USER_DEBUG|[24]|DEBUG|Flow returned 15.0
    - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

    
    /****************************************************************************
    * Record Updater example - call the Flow named "Record Updater"
    *****************************************************************************
    // List of records
	List<Account> accounts = new List<Account>{
    new Account(Name = 'Account A'),
    new Account(Name = 'Account B') };
 
	// Call the Flow
	Map<String, Object> params = new Map<String, Object>();
	params.put('Accounts', accounts);
	Flow.Interview.RecordUpdater recordUpdaterFlow = new Flow.Interview.RecordUpdater(params);
	recordUpdaterFlow.start();
 
	// Obtain results
	List<Account> updatedAccounts =
    (List<Account>) recordUpdaterFlow.getVariableValue('Accounts');
	for(Account account : updatedAccounts)
    System.debug(account.Name + ' ' + account.Description);

	//prints: 13:10:31.060 (60546122)|USER_DEBUG|[39]|DEBUG|Account A Description set by Flow
	//prints: 13:10:31.060 (60588163)|USER_DEBUG|[39]|DEBUG|Account B Description set by Flow
    - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

}