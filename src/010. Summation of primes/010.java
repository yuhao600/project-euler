import java.util.ArrayList;
import java.util.List;

public class Main {

    public static void main(String[] args) {
        final long upperLimit = 2_000_000;
        List<Long> primes = genPrimes(upperLimit);
        long sum = primes.stream().mapToLong(Long::longValue).sum();
        System.out.println(sum);
    }

    private static List<Long> genPrimes(long n) {
        // Sieve of Eratosthenes
        boolean[] sieve = new boolean[(int)n + 1];
        sieve[0] = false; // so that the index starts from 1
        for (int i = 1; i <= n; ++i) {
            if (i % 2 == 0) {
                sieve[i] = false;
            } else {
                sieve[i] = true;
            }
        }

        sieve[1] = false; // 1 is not prime
        sieve[2] = true; // 2 is the only even prime

        int factor = 3;
        while (factor <= (int)Math.sqrt(n)) {
            for (int i = factor * factor; i < n; i += factor) {
                sieve[i] = false;
            }
            do {
                factor += 2;
            } while (!sieve[factor]);
        }

        List<Long> primes = new ArrayList<>();
        for (long i = 0; i < sieve.length; ++i) {
            if (sieve[(int)i]) {
                primes.add(i);
            }
        }
        return primes;
    }
}
