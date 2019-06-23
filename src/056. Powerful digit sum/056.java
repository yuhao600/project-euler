import java.math.BigInteger;

public class Main {

    public static void main(String[] args) {
        long max = 0;
        for (int a = 1; a < 100; a++) {
            for (int b = 1; b < 100; b++) {
                BigInteger exp = BigInteger.valueOf(a).pow(b);
                long expDigitSum = digitSum(exp);
                if (expDigitSum > max) {
                    max = expDigitSum;
                }
            }
        }
        System.out.println(max);
    }

    private static long digitSum(BigInteger n){
        long sum = 0;
        while (n.compareTo(BigInteger.ZERO) > 0) {
            BigInteger[] quotientAndRemainder = n.divideAndRemainder(BigInteger.valueOf(10));
            sum += quotientAndRemainder[1].longValue();
            n = quotientAndRemainder[0];
        }
        return sum;
    }

}
