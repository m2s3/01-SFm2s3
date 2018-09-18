({
    createExpense: function(component, newExpense) {
        console.log("createExpense() in expenseFormHelper.js");   
        var createEvent = component.getEvent("createExpense");
        createEvent.setParams({ "expense": newExpense });
        createEvent.fire();
    },

})