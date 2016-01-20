package xstrategy

import java.util.List

class MinimaSolver 
{
  public (List<Double>)=>List<Double> findMinima
  
  new((List<Double>)=>List<Double> findMinima)
  {
    this.findMinima = findMinima
  }

  def List<Double> minima(double[] line)
  {
    // do some pre-processing
    val result = findMinima.apply(line)
    // do some post-processing
    result
  }
}


