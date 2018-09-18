({

    doInit: function(component, event, helper) {
       console.log("doInit() in campaignListController.js"); 
       //Create the action
        var action = component.get("c.getItems");
        //add callback behavior for when response is received
        action.setCallback(this, function(response) {
           var state = response.getState();
            if(state=== "SUCCESS") {
                component.set("v.items", response.getReturnValue());
            }
            else {
                console.log("Failed with state: " + state);
            }    
        }); // !setCallback
        
        //Send action off to be executed
        $A.enqueueAction(action);
    },
  
    
    handleAddItem: function(component, event, helper) 
    {
          var action = component.get("c.saveItem");
          action.setParams({"item": newItem});
          action.setCallback(this, function(response)
          { 
               var state = response.getState();
                if (component.isValid() && state === "SUCCESS")
                {
                    var items = component.get("v.items");
                    items.push(response.getReturnValue());
                    component.set("v.items", items);
                }
            });
            $A.enqueueAction(action);
      },    
})