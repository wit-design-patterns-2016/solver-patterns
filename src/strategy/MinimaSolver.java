package strategy;

public class MinimaSolver
{
  private FindMinima strategy;

  public MinimaSolver(FindMinima strategy)
  {
    this.strategy = strategy;
  }

  double[] minima(double[] line)
  {

    // do some pre-processing
    double[] result = null;
    
    result = strategy.algorithm(line);

    // do some post-processing
    return result;
  }

  public void changeStrategy(FindMinima newStrategy)
  {
    strategy = newStrategy;
  }
}
