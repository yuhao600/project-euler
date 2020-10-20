public class Main {
    public static void main(String[] args) {
        int count = 0;
        for (int n = 1; n <= 1 << 30; ++n) {
            if (nimWin(n)) {
                ++count;
            }
        }
        System.out.println(count);
    }

    // https://en.wikipedia.org/wiki/Nim#Mathematical_theory
    private static boolean nimWin(int n) {
        return (n ^ (n * 2) ^ (n * 3)) == 0;
    }
}