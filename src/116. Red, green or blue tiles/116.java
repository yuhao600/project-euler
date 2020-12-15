import java.math.BigInteger;

public class Main {

    private static final int UPPER_LIMIT = 50;
    private static final BigInteger[] FACTORIALS = new BigInteger[UPPER_LIMIT + 1];

    static {
        FACTORIALS[0] = BigInteger.ONE;
        for (int i = 1; i <= UPPER_LIMIT; i++) {
            FACTORIALS[i] = FACTORIALS[i - 1].multiply(BigInteger.valueOf(i));
        }
    }

    public static void main(String[] args) {
        BigInteger red = BigInteger.ZERO;
        for (int r = 1; r <= UPPER_LIMIT / 2; r++) {
            int n = UPPER_LIMIT - r;
            red = red.add(choose(n, r));
        }

        BigInteger green = BigInteger.ZERO;
        for (int g = 1; g <= UPPER_LIMIT / 3; g++) {
            int n = UPPER_LIMIT - 2 * g;
            green = green.add(choose(n, g));
        }

        BigInteger blue = BigInteger.ZERO;
        for (int b = 1; b <= UPPER_LIMIT / 4; b++) {
            int n = UPPER_LIMIT - 3 * b;
            blue = blue.add(choose(n, b));
        }

        BigInteger total = red.add(green).add(blue);
        System.out.println(total.longValue());

    }

    private static BigInteger choose(int n, int k) {
        return FACTORIALS[n].divide(FACTORIALS[n - k]).divide(FACTORIALS[k]);
    }
}
