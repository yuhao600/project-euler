import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Main {

    public static void main(String[] args) {

        Pattern r = Pattern.compile("1\\d2\\d3\\d4\\d5\\d6\\d7\\d8\\d9");
        for (long n = (long) Math.sqrt(10203040506070809.0); n < (long) Math.sqrt(19293949596979899.0); n++) {
            if (n % 10 == 3 || n % 10 == 7) {
                // note that n^2 is within the range of 64-bit integer, i.e, long
                String s = Long.toString(n * n);
                Matcher m = r.matcher(s);
                if (m.find()) {
                    System.out.println(n * 10);
                    break;
                }
            }
        }
    }

}
