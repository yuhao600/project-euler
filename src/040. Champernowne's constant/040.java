public class Main {
    public static void main(String[] args) {
        StringBuilder sb = new StringBuilder();
        
        int n = 1;
        sb.append('0'); //so that index starts from 1
        while (sb.length() <= 1000000) {
            sb.append(Integer.toString(n));
            n++;
        }
        String str = sb.toString();

        int d1       = str.charAt(1)       - '0';
        int d10      = str.charAt(10)      - '0';
        int d100     = str.charAt(100)     - '0';
        int d1000    = str.charAt(1000)    - '0';
        int d10000   = str.charAt(10000)   - '0';
        int d100000  = str.charAt(100000)  - '0';
        int d1000000 = str.charAt(1000000) - '0';
        System.out.println(d1 * d10 * d100 * d1000 * d10000 * d100000 * d1000000);
    }
}
