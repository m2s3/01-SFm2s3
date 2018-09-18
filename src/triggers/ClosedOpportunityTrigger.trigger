trigger ClosedOpportunityTrigger on Opportunity(after insert, after update)
{
	List <Task> tsk = new List<Task>(); 
	 
    // Add a task for each opportunity with stage = Closed-Won
    for (Opportunity op : [SELECT Id FROM Opportunity WHERE Id IN :Trigger.New AND stagename = 'Closed Won'])
	{
        tsk.add(new Task(Subject='Follow Up Test Task', whatid = op.Id));
    }
	
    if (tsk.size() > 0) 
	{
        insert tsk;
    }
}