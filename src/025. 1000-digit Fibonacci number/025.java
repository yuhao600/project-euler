import java.math.*;

public class Main {
    
    public static void main(String[] args) {
        BigInteger fa = BigInteger.ONE;
        BigInteger fb = BigInteger.ONE;
        
        int index = 1;
        while (fa.toString().length() < 1000) {
            BigInteger temp = fb;
            fb = fa.add(fb);
            fa = temp;
            index++;
        }
        System.out.println(index);
    }
}
