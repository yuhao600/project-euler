import java.util.TreeSet;

public class Main {

    public static void main(String[] args) {

        long upperLimit = 10_000;
        TreeSet<Long> pentagons = new TreeSet<>();
        for (long i = 1; i <= upperLimit; i++) {
            pentagons.add(i * (3 * i - 1) / 2);
        }
        for (long m : pentagons) {
            for (long n : pentagons) {
                if (pentagons.contains(m + n)) {
                    if (pentagons.contains(m + n + n)) {
                        System.out.println(m);
                        return;
                    }
                }
            }
        }
    }
}
