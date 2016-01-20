package strategy;

import org.junit.Test;
import static org.junit.Assert.*;

public class MinimaSolverTest
{
  private double[] line = {1.0, 2.0, 1.0, 2.0, -1.0, 3.0, 4.0, 5.0, 4.0};
  private MinimaSolver solver;

  @Test
  public void leastSquares()
  {
    solver = new MinimaSolver(new LeastSquaresStrategy());
    double[] result = solver.minima(line);
    assertTrue(result[0] == 1.1);
    assertTrue(result[1] == 2.2);
  }

  @Test
  public void newtonsMethod()
  {
    solver = new MinimaSolver(new NewtonsMethodStrategy());
    double[] result = solver.minima(line);
    assertTrue(result[0] == 3.3);
    assertTrue(result[1] == 4.4);
  }
 
  @Test
  public void bisection()
  {
    solver = new MinimaSolver(new BisectionStrategy());
    double[] result = solver.minima(line);
    assertTrue(result[0] == 5.5);
    assertTrue(result[1] == 6.6);
  }

  @Test
  public void testChangeAlgorithm()
  {
    solver = new MinimaSolver(new LeastSquaresStrategy());

    double[] result = solver.minima(line);
    assertTrue(result[0] == 1.1);
    assertTrue(result[1] == 2.2);
    solver.changeStrategy(new BisectionStrategy());

    result = solver.minima(line);
    assertTrue(result[0] == 5.5);
    assertTrue(result[1] == 6.6);
  }
}
