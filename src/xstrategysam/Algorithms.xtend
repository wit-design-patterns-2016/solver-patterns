package xstrategysam

import java.util.List

public class Bisection implements FindMinima
{
  override List<Double> algorithm(List<Double>line)
  {
    return #[5.5, 6.6]
  }
}

public class NewtonsMethod implements FindMinima
{
  override List<Double> algorithm(List<Double>line)
  {
    return #[3.3, 4.4]
  }
}

public class LeastSquares implements FindMinima
{
  override List<Double> algorithm(List<Double>line)
  {
    return #[1.1, 2.2]
  }
}

