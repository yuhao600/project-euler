import java.math.*;

public class Main
{

    public static void main(String[] args)
    {
        BigInteger f1 = BigInteger.ONE;
        BigInteger f2 = BigInteger.ONE;
        
        int index = 1;
        while (f1.toString().length() < 1000)
        {
            BigInteger temp = f2;
            f2 = f1.add(f2);
            f1 = temp;
            index++;
        }
        System.out.println(index);
    }
}
