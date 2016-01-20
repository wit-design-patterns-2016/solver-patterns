package templatemethod;

public abstract class MinimaSolver
{
  public MinimaSolver()
  {
  }

  double[] minima(double[] line)
  {
    // do some pre-processing
    double[] result = null;
    result = algorithm(line);
    // do some post-processing
    return result;
  }

  public abstract double[] algorithm(double[] line);
}