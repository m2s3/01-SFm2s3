({
    //load expenses from Salesforce
    
    doInit: function(component, event, helper) {
       console.log("doInit() in expensesController.js"); 
       //Create the action
        var action = component.get("c.getExpenses");
        //add callback behavior for when response is received
        action.setCallback(this, function(response) {
           var state = response.getState();
            if(state=== "SUCCESS") {
                component.set("v.expenses", response.getReturnValue());
            }
            else {
                console.log("Failed with state: " + state);
            }    
        }); // !setCallback
        
        //Send action off to be executed
        $A.enqueueAction(action);
    },
  
    handleCreateExpense: function(component, event, helper) {
        console.log("handleCreateExpense() in expensesController.js");
        var newExpense = event.getParam("expense");
        helper.createExpense(component, newExpense);
    },
    
    handleUpdateExpense: function(component, event, helper) {
        console.log("handleUpdateExpense() in expensesController.js");        
        var updateExp = event.getParam("expense");
        helper.updateExpense(component, updateExp);
    },
    
 

    
})