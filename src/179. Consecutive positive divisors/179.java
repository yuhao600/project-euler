import java.util.HashSet;
import java.util.Set;

public class Main {

    public static void main(String[] args) {
        final int upperLimit = 10_000_000;
        Set<Integer> primes = genPrimes(upperLimit / 2);

        int[] divisorNum = new int[upperLimit];
        for (int i = 0; i < upperLimit; ++i) {
            divisorNum[i] = 1;
        }

        for (int p : primes) {
            int times = 1;
            do {
                int n = p * times;
                divisorNum[n] *= max_exp(n, p) + 1;
                ++times;
            } while (p * times < upperLimit);
        }

        int count = 0;
        int prevDivisorNum = 1;
        for (int n = 2; n < upperLimit; ++n) {
            if (divisorNum[n] == prevDivisorNum) {
                ++count;
            }
            prevDivisorNum = divisorNum[n];
        }

        System.out.println(count);
    }

    private static long max_exp(long n, long p) {
        long exp = 0;
        while (n % p == 0) {
            exp++;
            n /= p;
        }
        return exp;
    }

    private static Set<Integer> genPrimes(int n) {
        // Sieve of Eratosthenes
        boolean[] sieve = new boolean[n + 1];
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

        Set<Integer> primes = new HashSet<>();
        for (int i = 0; i < sieve.length; ++i) {
            if (sieve[i]) {
                primes.add(i);
            }
        }
        return primes;
    }

}
