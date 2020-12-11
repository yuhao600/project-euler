import java.util.ArrayList;
import java.util.List;

public class Main {

    private static final long UPPER_LIMIT = 150_000_000;
    private static List<Long> primes;

    static {
        initPrimes();
    }

    public static void main(String[] args) {
        long sum = 0;
        /*
         obviously n must be even
         n must be multiples of 5 because
         if n = 5k + 1 or 5k + 4, n^2 + 9 is divisible by 5
         if n = 5k + 2 or 5k + 3, n^2 + 1 is divisible by 5
         */
        for (long n = 10; n < UPPER_LIMIT; n += 10) {
            if (ifPrimePattern(n)) {
                sum += n;
            }
        }
        System.out.println(sum);
    }

    private static void initPrimes() {
        primes = genPrimes(UPPER_LIMIT);
        primes.remove(0); // 2 is not needed
    }

    private static boolean ifPrimePattern(long n) {
        if (n % 3 == 0) {
            return false;
        }
        if (n % 7 == 0) {
            return false;
        }
        if (n % 13 == 0) {
            return false;
        }

        // (n^2 + 13) % 7 == 0
        if ((n % 7 == 1) || (n % 7 == 6)) {
            return false;
        }
        // (n^2 + 3) % 7 == 0
        if ((n % 7 == 2) || (n % 7 == 5)) {
            return false;
        }
        // (n^2 + 9) % 13 == 0
        if ((n % 13 == 2) || (n % 13 == 11)) {
            return false;
        }
        // (n^2 + 1) % 13 == 0
        if ((n % 13 == 5) || (n % 13 == 8)) {
            return false;
        }
        // (n^2 + 3) % 13 == 0
        if ((n % 13 == 6) || (n % 13 == 7)) {
            return false;
        }

        for (long p : primes) {
            if (p > n + 1) {
                break;
            }
            for (long a : new long[]{1, 3, 7, 9, 13, 27}) {
                if ((n * n + a) % p == 0) {
                    return false;
                }
            }

        }

        // tests above primes are consecutive
        for (long b : new long[]{5, 11, 15, 17, 19, 21, 23, 25}) {
            for (long p : primes) {
                /*
                 tests up to the biggest prime less than the square root of n * n + 25
                 the condition p > n + 1 works for 10, and certainly works for big enough n
                 */
                if (p > n + 1) {
                    return false;
                }
                if ((n * n + b) % p == 0) {
                    break;
                }
            }
        }

        return true;
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
