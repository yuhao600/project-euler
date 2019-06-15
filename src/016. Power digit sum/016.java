import java.math.*;

public class Main {
    public static void main(String[] args) {
        BigInteger power = BigInteger.valueOf(2).pow(1000);
        byte[] arr = power.toString().getBytes();
        int sum = 0;
        for (byte digit : arr) {
            sum += digit - '0';
        }
        System.out.println(sum);
    }
}
