public class Main {
    
    public static void main(String[] args) {

        int sum = 0;
        for (int i = 2; i < 1000000; i++) {
            if (digitFifthPowerSum(i) == i) {
                sum += i;
            }
        }
        System.out.println(sum);
    }

    private static int digitFifthPowerSum(int n) {
        int sum = 0;
        while (n > 0) {
            int d = n % 10;
            sum += d * d * d * d * d;
            n /= 10;
        }
        return sum;
    }

}
