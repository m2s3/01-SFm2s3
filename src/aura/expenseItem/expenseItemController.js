({
    doInit : function(component, event, helper) {
        console.log("doInit() in expenseItemController.js");   
        var mydate = component.get("v.expense.Date__c");
        if(mydate){
            component.set("v.formatdate", new Date(mydate));
        }
    },
    
    clickReimbursed: function (component, event, helper) {
        console.log("clickReimbursed() in expenseItemController.js");   
        var expense = component.get("v.expense");
        var updateEvent = component.getEvent("updateExpense");
        updateEvent.setParams({"expense" : expense});
        updateEvent.fire();
    }
})