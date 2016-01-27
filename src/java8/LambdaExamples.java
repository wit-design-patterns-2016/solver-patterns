package java8;

@FunctionalInterface
interface ICombinable<T>
{
  public T add(T t1, T t2);
}

class Trade
{
  private int quantity;

  public Trade (int amount)
  {
    quantity = amount;
  }
  
  public int getQuantity()
  {
    return quantity;
  }
  
  public void setQuantity(int amount)
  {
    quantity = amount;
  }

}

public class LambdaExamples
{

  public static void main(String[] args)
  {

    //Concatenating string
    
    ICombinable<String> adder = (String s1, String s2) -> s1 + s2;

    // multiplying
    ICombinable<Integer> multiplier = (i1, i2) -> i1 * i2;

    String a = adder.add("abc", "def");
    System.out.println(adder.add("abc", "def"));
    System.out.println(multiplier.add(12, 2));

    ICombinable<Trade> tradeAdder = (Trade t1, Trade t2) -> {
      t1.setQuantity(t1.getQuantity() + t2.getQuantity());
      return t1;
    };
    
    Trade t1 = new Trade(12000);
    Trade t2 = new Trade(24000);
    tradeAdder.add(t1, t2);

  }

}
