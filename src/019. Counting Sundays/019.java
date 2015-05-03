import java.util.*;

public class Main
{
	public static void main(String[] args)
	{
		GregorianCalendar firstOfMonth = new GregorianCalendar(1901, 1, 1);
		int count = 0;
		while (firstOfMonth.before(new GregorianCalendar(2000, 12, 31)))
		{
			if (firstOfMonth.get(Calendar.DAY_OF_WEEK) == Calendar.SUNDAY)
			{
				count += 1;
			}
			firstOfMonth.add(Calendar.MONTH, 1);
		}
		System.out.println(count);
	}
}
