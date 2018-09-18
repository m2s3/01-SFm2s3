public class StringArrayTest  {

	public static List <String>  generateStringArray (Integer xLen)  
	{	
		List <String> ls = new List <String>();
		for (Integer i=0; i<=xLen-1; i++)
		{
			ls.add('Test ' + i);
		}
		return (ls);
	}
	
}