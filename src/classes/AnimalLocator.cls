public class AnimalLocator 
{
    public static String getAnimalNameById(Integer id) 
    {
       String retVal=''; 
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+id);
        req.setMethod('GET');
        HttpResponse res = http.send(req);
        
        if (res.getStatusCode() == 200)
        {
            Map<String, Object> results = (Map<String, Object>)JSON.deserializeUntyped(res.getBody()); 
            Map<string, object> animals = (map<string,object>) results.get('animal');
            System.debug('animals='+ animals);
//          System.debug('Inside AnimalLocator:animals get(name=)'+ animals.get(id));
 //            retVal = String.valueof( animals.get('name'));
             retVal = String.valueof( animals.get('eats'));
//          retVal = 'MyDog';
//          System.debug('Inside AnimalLocator:animals.retVal=' + retVal);                
        }
        return retVal; 
    }

}