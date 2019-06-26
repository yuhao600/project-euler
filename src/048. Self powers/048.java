import java.math.BigInteger;

public class Main {
    public static void main(String[] args) {
        final BigInteger tenTo10 = BigInteger.TEN.pow(10);
        BigInteger result = BigInteger.ZERO;
        for (int i = 1; i <= 1000; i++) {
            result = result.add(BigInteger.valueOf(i).pow(i));
            result = result.mod(tenTo10);
        }
        System.out.println(result);
    }
}
