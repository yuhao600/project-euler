import java.math.*;

public class Main {
    public static void main(String[] args) {
        BigInteger factorial = BigInteger.ONE;
        for (int i = 1; i <= 100; i++) {
            factorial = factorial.multiply(BigInteger.valueOf(i));
        }
        BigInteger sumDigits = BigInteger.ZERO;
        while (factorial.compareTo(BigInteger.ZERO) > 0){
            sumDigits = sumDigits.add(factorial.mod(BigInteger.TEN));
            factorial = factorial.divide(BigInteger.TEN);
        }
        System.out.println(sumDigits);
    }
}
