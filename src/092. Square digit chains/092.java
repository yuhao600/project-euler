import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class Main {

    private static final Set<Long> result89 = new HashSet<>();
    private static final Set<Long> result1 = new HashSet<>();

    public static void main(String[] args) {
        int counter = 0;
        for (long i = 1; i <= 10_000_000; i++) {
            if (chain(i) == 89) {
                counter++;
            }
        }
        System.out.println(counter);
    }

    private static long chain(long n) {
        List<Long> chainResults = new ArrayList<>();
        while (true) {
            if (n == 1 || result1.contains(n)) {
                result1.addAll(chainResults);
                return 1;
            }
            if (n == 89 || result89.contains(n)) {
                result89.addAll(chainResults);
                return 89;
            }
            chainResults.add(n);
            n = digitSquare(n);
        }
    }

    private static long digitSquare(long n) {
        long sum = 0;
        while (n > 0) {
            sum += (n % 10) * (n % 10);
            n /= 10;
        }
        return sum;
    }

}
