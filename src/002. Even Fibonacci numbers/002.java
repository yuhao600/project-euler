public class Main {
    public static void main(String args[]) {
        long f1 = 1;
        long f2 = 2;
        
        long sum = 0;
        while (f1 < 4_000_000) {
            if (f1 % 2 == 0) {
                sum += f1;
            }
            long temp = f2;
            f2 = f1 + f2;
            f1 = temp;
        }
        System.out.println(sum);
    }
}
