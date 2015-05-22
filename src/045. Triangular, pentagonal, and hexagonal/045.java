package test;

import java.util.*;

public class Main
{
    public static void main(String[] args)
    {
        Set<Long> triangle   = new HashSet<>();
        Set<Long> pentagonal = new HashSet<>();
        Set<Long> hexagonal  = new HashSet<>();
        for (long n = 1; n < 100000; n++)
        {
            triangle.add(n * (n + 1) / 2);
            pentagonal.add(n * (3 * n - 1) / 2);
            hexagonal.add(n * (2 * n - 1));
        }
        
        TreeSet<Long> result = new TreeSet<>();
        for (long num: triangle)
        {
            if (pentagonal.contains(num) && hexagonal.contains(num))
            {
                result.add(num);
            }
        }
        
        System.out.println(result.higher((long)40755));
    }
}
