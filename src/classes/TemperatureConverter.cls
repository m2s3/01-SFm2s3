public class TemperatureConverter 
{
  public static Decimal FahrenheitToCelsius(Decimal fh)
  {
      Decimal cs = (fh - 32) * 5/9;
      return cs.SetScale(2);
  }
}