import java.util.Arrays;

public class Main {
    public static void main(String[] args) {
        long bouncy_count = 0;
        long n = 1;
        while (true) {
            if (isBouncy(n)) {
                bouncy_count++;
            }
            if ((double) bouncy_count / n == 0.99) {
                System.out.println(n);
                break;
            }
            n++;
        }
    }

    private static boolean isBouncy(long n) {
        String original = Long.toString(n);
        char[] chars = original.toCharArray();
        Arrays.sort(chars);
        String sorted = new String(chars);
        if (original.equals(sorted)) {
            return false;
        }
        String reversed = new StringBuilder(sorted).reverse().toString();
        if (original.equals(reversed)) {
            return false;
        }
        return true;
    }
}
