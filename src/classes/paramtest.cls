public class paramtest {
    public string value { get; set;}
        																	 		public ContentVersion cont {get; set;}
    
    public void testinput(){
        value = apexpages.currentPage().getParameters().get('inpval');
        system.debug('apex:::paramtest::testinput().value=' + value);
    }
}