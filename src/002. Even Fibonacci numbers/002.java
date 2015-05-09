public class Main
{
    public static void main(String args[])
    {
        int f1 = 1;
        int f2 = 2;
        
        int sum = 0;
        while (f1 < 4_000_000)
        {
            if (f1 % 2 == 0)
            {
                sum += f1;
            }
            int temp = f2;
            f2 = f1 + f2;
            f1 = temp;
        }
        System.out.println(sum);
    }
}
