import java.util.Arrays;

public class Main {

    public static void main(String[] args) {
        long bouncyCount = 0;
        long n = 1;
        while (true) {
            if (isBouncy(n)) {
                ++bouncyCount;
            }
            if ((double) bouncyCount / n == 0.99) {
                System.out.println(n);
                break;
            }
            n++;
        }
    }

    private static boolean isBouncy(long n) {
        String original = Long.toString(n);
        String sorted = sortString(original);
        if (original.equals(sorted)) {
            return false;
        }
        sorted = reverseString(sorted);
        if (original.equals(sorted)) {
            return false;
        }
        return true;
    }

    private static String sortString(String original) {
        char[] chars = original.toCharArray();
        Arrays.sort(chars);
        return new String(chars);
    }

    private static String reverseString(String original) {
        return new StringBuilder(original).reverse().toString();
    }

}
