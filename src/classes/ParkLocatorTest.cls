@isTest

private class ParkLocatorTest
{
     @isTest static void testCallout()
      {
          // this causes a fake response to be generated
          Test.setMock( WebServiceMock.class,  new ParkServiceMock() );

          // Call the method that invokes a callout
          String[] arrParks  = ParkLocator.country( 'Japan');

		  // Verify that a fake result is returned
	  	  //  System.assertEquals(3.0, result);          
      }        
}