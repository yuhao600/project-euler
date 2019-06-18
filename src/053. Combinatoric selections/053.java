import java.math.BigInteger;
import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
        final int UPPER_LIMIT = 100;
        ArrayList<BigInteger> factorials = new ArrayList<>();
        factorials.add(BigInteger.ONE);
        for (int i = 1; i <= UPPER_LIMIT; i++) {
            factorials.add(factorials.get(i - 1).multiply(BigInteger.valueOf(i)));
        }

        int count = 0;
        for (int n = 1; n <= UPPER_LIMIT; n++) {
            for (int r = 1; r <= n; r++) {
                if (factorials.get(n).divide(factorials.get(r)).divide(factorials.get(n - r))
                        .compareTo(BigInteger.valueOf(1_000_000)) > 0) {
                    count += 1;
                }
            }
        }

        System.out.println(count);
    }
}
