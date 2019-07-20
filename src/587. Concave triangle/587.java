public class Main {

    public static void main(String[] args) {
        // assume that the radius of the circle is 1
        double lSectionArea = 1 - Math.PI / 4;
        int n = 2;
        while(true) {
            if (concaveTriangleArea(n) / lSectionArea < 0.001) {
                System.out.println(n);
                break;
            }
            n++;
        }
    }

    private static double concaveTriangleArea(int n) {
        // assume the height of the concave triangle is h
        // solve the equation
        // (1 - n*h)^2 + (1 - h)^2 = 1
        double h = (n + 1 - Math.sqrt(2 * n)) / (n * n + 1);
        double radiusAngle = Math.acos((1 - h) / 1);
        double circularSectorArea = radiusAngle / 2;
        double innerUpperTriangleArea = (Math.sqrt(1 - (1 - h) * (1 - h))) * (1 - 1.0 / n) / 2;
        double containingTriangleArea = 1.0 * (1.0 / n) / 2;
        return containingTriangleArea + innerUpperTriangleArea - circularSectorArea;
    }

}
