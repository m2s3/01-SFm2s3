({
	packItem : function(component, event, helper) {
        
        var oItem = component.get("v.item", true);
        oItem.Packed__c = true;
        component.set("v.item", oItem);
        
        var btnClicked = event.getSource();
        btnClicked.set("v.disabled", true); 
        
	}
})