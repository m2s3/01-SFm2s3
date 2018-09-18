public with sharing class ExpensesController {
    // ... ABOUT WHAT'S MISSING HERE ... 

    @AuraEnabled    
    public static List <Expense__c> getExpenses() {
        
        System.debug('getExpenses() in ExpensesController.apxc');
        // check to make sure all fields are accessible to this user
        String[] fieldsToCheck = new String[] { 'Id','Name','Amount__c','Client__c','Date__c','Reimbursed__c','CreatedDate' };
        Map<String, Schema.SObjectField> fieldDescribeTokens = Schema.SObjectType.Expense__c.fields.getMap();
        
        for (String field: fieldsToCheck) {
            if ( !fieldDescribeTokens.get(field).getDescribe().isAccessible() ) {
                throw new System.NoAccessException();
                //return null;
            } 
        }
        //OK, they're cool, let 'em through
        return [select Id, Name, Amount__c, Client__c, Date__c, Reimbursed__c, CreatedDate from Expense__c];
    }
    
    
    @AuraEnabled
    public static Expense__c saveExpense(Expense__c expense) {
        //Perform isUpdatable() checking first, then 
        System.debug('saveExpense() in ExpensesController.apxc');
        upsert expense;
        return expense;
    }
        
}