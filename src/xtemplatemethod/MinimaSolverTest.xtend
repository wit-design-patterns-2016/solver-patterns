package xtemplatemethod

import static org.junit.Assert.*
import org.junit.Test

class MinimaSolverTest
{
  val line = #[ 1.0, 2.0, 1.0, 2.0, -1.0, 3.0, 4.0, 5.0, 4.0 ]
  var MinimaSolver solver

  @Test
  def newtonsMetod()
  {
    solver = new NewtonsMethodSolver
    val result = solver.minima(line)
    assertTrue(result.get(0) == 3.3)
    assertTrue(result.get(1) == 4.4)
  }
  
    @Test
  def leastSquares()
  {
    solver = new LeastSquaresSolver
    val result = solver.minima(line)
    assertTrue(result.get(0) == 1.1)
    assertTrue(result.get(1) == 2.2)
  }
  @Test
  def bisection()
  {
    solver = new BisectionSolver
    val result = solver.minima(line)
    assertTrue(result.get(0) == 5.5)
    assertTrue(result.get(1) == 6.6)
  }
}