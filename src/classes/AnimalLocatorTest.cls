@isTest
public class AnimalLocatorTest 
{
    //https://th-apex-http-callout.herokuapp.com/animals/1     ==(returns)==>    {"animal":{"id":1,"name":"chicken","eats":"chicken food","says":"cluck cluck"}}
    
     @isTest public static void AnimalLocatorTest() 
     {
        // Set mock callout class 
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());        
        String res = AnimalLocator.getAnimalNameById(1);
        System.debug('Inside AnimalLocatorTest:res='+ res);
 //       String expectedResult = 'chicken';
        String expectedResult = 'chicken food';
        System.assertEquals(res,expectedResult );
    }
}