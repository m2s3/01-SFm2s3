({
    saveExpense: function(component, expense, callback) {
        console.log("saveExpense() in expensesHelper.js");        
        var action = component.get("c.saveExpense");
        action.setParams({ "expense": expense });
        if (callback) {
            action.setCallback(this, callback);
        }
        $A.enqueueAction(action);
    },
    
    createExpense: function(component, expense) {
        console.log("createExpense() in expensesHelper.js"); 
        this.saveExpense(component, expense, function(response){
            var state = response.getState();
            if (state === "SUCCESS") {
                var expenses = component.get("v.expenses");
                expenses.push(response.getReturnValue());
                component.set("v.expenses", expenses);
            }
        });
    },
    updateExpense: function(component, expense) {
        console.log("updateExpense() in expensesHelper.js"); 
        this.saveExpense(component, expense);
    },


})