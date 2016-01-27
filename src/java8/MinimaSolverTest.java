package java8;

import org.junit.Test;
import static org.junit.Assert.*;

public class MinimaSolverTest
{
  private double[] line = {1.0, 2.0, 1.0, 2.0, -1.0, 3.0, 4.0, 5.0, 4.0};
  private MinimaSolver solver;

  @Test
  public void leastSquares()
  {
    solver = new MinimaSolver(Algorithms.leastSquares);
    double[] result = solver.minima(line);
    assertTrue(result[0] == 1.1);
    assertTrue(result[1] == 2.2);
  }

  @Test
  public void newtonsMethod()
  {
    solver = new MinimaSolver(Algorithms.newtonsMethod);
    double[] result = solver.minima(line);
    assertTrue(result[0] == 3.3);
    assertTrue(result[1] == 4.4);
  }
 
  @Test
  public void bisection()
  {
    solver = new MinimaSolver(Algorithms.bisection);
    double[] result = solver.minima(line);
    assertTrue(result[0] == 5.5);
    assertTrue(result[1] == 6.6);
  }
}
