package xstrategysam

import java.util.List

public interface FindMinima
{
  def List<Double> algorithm(List<Double>line)
}

class MinimaSolver 
{
  private FindMinima findMinima
  
  new(FindMinima findMinima)
  {
    this.findMinima = findMinima
  }

  def double[] minima(double[] line)
  {
    // do some pre-processing
    val result = findMinima.algorithm(line)
    // do some post-processing
    result
  }
}