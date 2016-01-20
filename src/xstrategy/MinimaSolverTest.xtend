package xstrategy

import java.util.ArrayList
import java.util.List
import org.junit.Test
import xstrategysam.Bisection

import static org.junit.Assert.*

class MinimaSolverTest
{
  val line       = #[ 1.0, 2.0, 1.0, 2.0, -1.0, 3.0, 4.0, 5.0, 4.0 ]
  val algorithms = new Algorithms

  @Test
  def newtonsMethod()
  {
    var solver = new MinimaSolver (algorithms.newtonsMethod)
    val result = solver.minima(line)
    assertTrue(result.get(0) == 3.3)
    assertTrue(result.get(1) == 4.4)    
  }
 
  @Test
  def leastSquares()
  { 
    var solver = new MinimaSolver (algorithms.leastSquares)
    val result = solver.minima(line)
    assertTrue(result.get(0) == 1.1)
    assertTrue(result.get(1) == 2.2)
  }
  
  @Test
  def bisection()
  {
    var solver = new MinimaSolver (algorithms.bisection)
    val result = solver.minima(line)
    assertTrue(result.get(0) == 5.5)
    assertTrue(result.get(1) == 6.6)
  }
  
  @Test
  def algorithmList()
  {
    var List <(List<Double>)=>List<Double>> list = new ArrayList
    
    list.add(algorithms.bisection)
    list.add(algorithms.newtonsMethod)
    list.add(algorithms.leastSquares)
        
    for ((List<Double>)=>List<Double> algorithm : list)
    {
      algorithm.apply(line)
    }
  }
}