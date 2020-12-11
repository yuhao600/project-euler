public class Main {

    public static void main(String[] args) {
        long sum = 0;
        for (long n = 0; n <= 1_000_000; n++) {
            if (isPalindrome(Long.toString(n)) && isPalindrome(Long.toString(n, 2))) {
                sum += n;
            }
        }
        System.out.println(sum);
    }

    private static boolean isPalindrome(String s) {
        return reverseString(s).equals(s);
    }

    private static String reverseString(String original) {
        return new StringBuilder(original).reverse().toString();
    }
}
