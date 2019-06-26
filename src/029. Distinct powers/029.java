import java.math.BigInteger;
import java.util.HashSet;
import java.util.Set;

public class Main {
    public static void main(String[] args) {
        Set<BigInteger> nums = new HashSet<>();
        for (int a = 2; a <= 100; a++) {
            for (int b = 2; b <= 100; b++) {
                nums.add(BigInteger.valueOf(a).pow(b));
            }
        }

        System.out.println(nums.size());
    }
}
