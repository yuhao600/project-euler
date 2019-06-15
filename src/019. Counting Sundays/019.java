import java.time.DayOfWeek;
import java.time.LocalDate;
public class Main {
    public static void main(String[] args) {
        LocalDate firstOfMonth = LocalDate.of(1901, 1, 1);
        int count = 0;
        while (firstOfMonth.isBefore(LocalDate.of(2000, 12, 31))) {
            if (firstOfMonth.getDayOfWeek() == DayOfWeek.SUNDAY) {
                count += 1;
            }
            firstOfMonth = firstOfMonth.plusMonths(1);
        }
        System.out.println(count);
    }
}
