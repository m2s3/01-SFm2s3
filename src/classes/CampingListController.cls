public with sharing class CampingListController 
{
    @AuraEnabled    
    public static List <Camping_Item__c> getItems() {
        
        System.debug('getItems() in CampingListController.apxc');
        // check to make sure all fields are accessible to this user
        String[] fieldsToCheck = new String[] { 'Id','Name','Price__c','Quantity__c'};
        Map<String, Schema.SObjectField> fieldDescribeTokens = Schema.SObjectType.Camping_Item__c.fields.getMap();
        
        for (String field: fieldsToCheck) {
            if ( !fieldDescribeTokens.get(field).getDescribe().isAccessible() ) {
                throw new System.NoAccessException();
                //return null;
            } 
        }
        //OK, they're cool, let 'em through
        return [select Id, Name, Price__c, Quantity__c  from Camping_Item__c];
    }
    
    
    @AuraEnabled
    public static Camping_Item__c saveItem(Camping_Item__c item) 
    {
        //Perform isUpdatable() checking first, then 
        System.debug('saveItem() in CampingListController.apxc');
        upsert item;
        return item;
    }
        
}