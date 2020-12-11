import java.util.Arrays;

public class Main {

    public static void main(String[] args) {
        long n = 1;
        while (true) {
            String sorted = toSorted(n);
            if (sorted.equals(toSorted(n * 2))
                && sorted.equals(toSorted(n * 3))
                && sorted.equals(toSorted(n * 4))
                && sorted.equals(toSorted(n * 5))
                && sorted.equals(toSorted(n * 6))) {
                System.out.println(n);
                break;
            }
            n++;
        }
    }

    private static String toSorted(long n) {
        return sortString(Long.toString(n));
    }

    private static String sortString(String original) {
        char[] chars = original.toCharArray();
        Arrays.sort(chars);
        return new String(chars);
    }
}
