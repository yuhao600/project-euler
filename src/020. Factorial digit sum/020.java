import java.math.*;

public class Main
{
	public static void main(String[] args)
	{
		BigInteger factor = BigInteger.ONE;
		for (int i = 1; i <= 100; i++)
		{
			factor = factor.multiply(BigInteger.valueOf(i));
		}
		BigInteger sumDigit = BigInteger.ZERO;
		while (factor.compareTo(BigInteger.ZERO) > 0)
		{
			sumDigit = sumDigit.add(factor.mod(BigInteger.TEN));
			factor = factor.divide(BigInteger.TEN);
		}
		System.out.println(sumDigit);
	}
}
