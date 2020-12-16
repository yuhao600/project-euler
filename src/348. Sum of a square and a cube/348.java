import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class Main {

    private static final long UPPER_LIMIT = 1_000_000_000L;

    public static void main(String[] args) {
        // if the result is not enough, take a bigger guess

        Set<Long> squares = new HashSet<>();
        for (long a = 2; a < Math.sqrt(UPPER_LIMIT); a++) {
            squares.add(a * a);
        }

        Set<Long> cubes = new HashSet<>();
        for (long b = 2; b * b * b < UPPER_LIMIT; b++) {
            cubes.add(b * b * b);
        }

        Map<Long, Integer> candidates = new HashMap<>();
        for (long s : squares) {
            for (long c : cubes) {
                if (isPalindrome(s + c)) {
                    int count = candidates.getOrDefault(s + c, 0);
                    candidates.put(s + c, count + 1);
                }
            }
        }

        List<Long> result = new ArrayList<>();
        for (Map.Entry<Long, Integer> kv : candidates.entrySet()) {
            if (kv.getValue() == 4) {
                result.add(kv.getKey());
            }
        }

        if (result.size() >= 5) {
            result.sort(Long::compareTo);
            long sum = result.stream()
                    .mapToLong(Long::longValue)
                    .limit(5)
                    .sum();
            System.out.println(sum);
        }
    }

    private static boolean isPalindrome(long n) {
        String original = Long.toString(n);
        return reverseString(original).equals(original);
    }

    private static String reverseString(String original) {
        return new StringBuilder(original).reverse().toString();
    }

}
