import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class Main {

    public static void main(String[] args) {
        Map<String, Set<Long>> counter = new HashMap();
        long n = 1;
        while (true) {
            long cube = n * n * n;
            String sorted = toSorted(cube);
            Set<Long> counted = counter.getOrDefault(sorted, new HashSet<>());
            counted.add(cube);
            if (counted.size() == 5) {
                System.out.println(Collections.min(counted));
                break;
            }
            counter.put(sorted, counted);
            n++;
        }
    }

    private static String toSorted(long n) {
        String s = Long.toString(n);
        char[] chars = s.toCharArray();
        Arrays.sort(chars);
        return new String(chars);
    }
}
