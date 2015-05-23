import java.math.*;
import java.util.*;

public class Main
{
    public static void main(String[] args)
    {
        Map<Integer, BigInteger>factorial = new HashMap<>();
        factorial.put(0, BigInteger.ONE);
        for (int i = 1; i <= 100; i++)
        {
            factorial.put(i, factorial.get(i - 1).multiply(BigInteger.valueOf(i)));
        }
        
        int count = 0;
        for (int n = 1; n <= 100; n++)
        {
            for (int r = 1; r <= n; r++)
            {
                if (factorial.get(n).divide(factorial.get(r)).divide(factorial.get(n - r)).compareTo(BigInteger.valueOf(1_000_000)) > 0)
                {
                    count += 1;
                }
            }
        }
        
        System.out.println(count);
    }
}
