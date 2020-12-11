import java.util.ArrayList;

public class Main {

    public static void main(String[] args) {
        ArrayList<Integer> primes = genPrimes(200_000);
        // index starts from 0
        System.out.println(primes.get(10_000));

    }

    private static ArrayList<Integer> genPrimes(int n) {
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

        ArrayList<Integer> primes = new ArrayList<>();
        for (int i = 0; i < sieve.length; ++i) {
            if (sieve[i]) {
                primes.add(i);
            }
        }
        return primes;
    }
}
