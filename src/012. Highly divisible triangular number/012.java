public class Main {

    public static void main(String[] args) {
        long triangle = 0;
        int i = 1;
        while (true) {
            triangle += i;
            if (numOfFactors(triangle) > 500) {
                System.out.println(triangle);
                break;
            }
            i++;
        }
    }
    
    public static int numOfFactors(long num) {
        int count = 0;
        long factor = 1;
        while (factor * factor < num)) {
            if (num % factor == 0) {
                count += 1;
            }
            factor += 1;
        }
        if (factor * factor > num) {
            return count * 2;
        } else {
            // perfect square
            return count * 2 + 1;
        }
    }
}
