import java.util.stream.IntStream;
public class Main {

    public static void main(String[] args) {
        int sum = IntStream.range(1, 1000)
                .filter(n -> n % 3 == 0 || n % 5 == 0)
                .sum();
        System.out.println(sum);
    }
}