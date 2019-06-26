import java.math.BigInteger;

public class Main {
    public static void main(String[] args) {
        final BigInteger ten2Ten = BigInteger.valueOf(10).pow(10);
        BigInteger powerTwo = BigInteger.valueOf(2).modPow(BigInteger.valueOf(7830457), ten2Ten);
        BigInteger prime = powerTwo.multiply(BigInteger.valueOf(28433)).add(BigInteger.ONE);
        BigInteger result = prime.mod(ten2Ten);
        System.out.println(result);
    }
}

