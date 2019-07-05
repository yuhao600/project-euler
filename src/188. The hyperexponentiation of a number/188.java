import java.math.BigInteger;

public class Main {

    public static void main(String[] args) {
        BigInteger m = BigInteger.valueOf(100_000_000);
        System.out.println(hyperExp(1777, 1855, m));
    }

    private static BigInteger hyperExp(long a, long b, BigInteger m) {
        if (b == 1) {
            return BigInteger.valueOf(a).mod(m);
        } else {
            return BigInteger.valueOf(a).modPow(hyperExp(a, b - 1, m), m);
        }
    }

}
