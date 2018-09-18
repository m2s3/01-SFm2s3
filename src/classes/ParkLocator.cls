public class ParkLocator 
{
    public static String[] country(String ctry) 
    {
        ParkService.ParksImplPort mypark = new ParkService.ParksImplPort();
        return mypark.byCountry(ctry);
    }
}