package xtemplatemethod

abstract class MinimaSolver 
{
  new()
  {
  }

  def double[] minima(double[] line)
  {
    // do some pre-processing
    var double[] result = null
    result = algorithm(line)
    // do some post-processing
    result
  }
 
  def abstract double[] algorithm(double[] line);
}

class BisectionSolver extends MinimaSolver
{
  override algorithm(double[] line) 
  {
    // Compute Minima on line
    //  - algorithm
    val x = 5.5;  // simulated result
    val y = 6.6;  // simulated result
    #[x, y]
  }
}

class NewtonsMethodSolver extends MinimaSolver
{
  override algorithm(double[] line) 
  {
    // Compute Minima on line
    //  - algorithm
    val x = 3.3;  // simulated result
    val y = 4.4;  // simulated result
    #[x, y]    
  }
}

class LeastSquaresSolver extends MinimaSolver
{
  override algorithm(double[] line) 
  {
    // Compute Minima on line
    //  - algorithm
    val x = 1.1;  // simulated result
    val y = 2.2;  // simulated result
    #[x, y]     
  }
}