import java.util.TreeSet;

public class Main {

    public static void main(String[] args) {
        final long upperLimit = 1_000_000_000;
        TreeSet<Long> hammings = genHammings(upperLimit, 100);
        System.out.println(hammings.size());
    }

    private static TreeSet<Long> genHammings(long upperLimit, int hamingType) {
        TreeSet<Integer> primes = genPrimes(hamingType);
        TreeSet<Long> hammings = new TreeSet<>();
        hammings.add(1L);
        for (long p : primes) {
            TreeSet<Long> temp = new TreeSet<>(hammings);
            for (long h : hammings) {
                while (h * p <= upperLimit) {
                    temp.add(h * p);
                    h *= p;
                }
            }
            hammings = temp;
        }
        return hammings;
    }

    private static TreeSet<Integer> genPrimes(int n) {
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
        while (factor <= Math.sqrt(n)) {
            for (int i = factor * factor; i < n; i += factor) {
                sieve[i] = false;
            }
            do {
                factor += 2;
            } while (!sieve[factor]);
        }

        TreeSet<Integer> primes = new TreeSet<>();
        for (int i = 0; i < sieve.length; ++i) {
            if (sieve[i]) {
                primes.add(i);
            }
        }
        return primes;
    }

}
