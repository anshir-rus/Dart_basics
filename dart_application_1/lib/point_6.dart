import 'dart:math';

class Point {
  double x = 0;
  double y = 0;
  double z = 0;

  static final List cache = [];

  Point(double x1, double y1, double z1) {
    x = x1;
    y = y1;
    z = z1;
  }

  double distanceTo(Point another) {
    double distanceX = x - another.x;
    double distanceY = y - another.y;
    double distanceZ = z - another.z;

    var result =
        sqrt(pow(distanceX, 2) + pow(distanceY, 2) + pow(distanceZ, 2));

    return result;
  }

  double square(Point a, Point b, Point c) {
    double ab = a.distanceTo(b);
    double bc = b.distanceTo(c);
    double ca = c.distanceTo(a);

    double pperimetr = ((ab + bc + ca) / 2);

    double result = sqrt(
        pperimetr * (pperimetr - ab) * (pperimetr - bc) * (pperimetr - ca));

    return result;
  }

  List mycoord() {
    List result = [x, y, z];
    return result;
  }

  factory Point.beginpoint() {
    return Point(0, 0, 0);
  }

  factory Point.vectorone() {
    return Point(1, 1, 1);
  }

  factory Point.random(double min, double max) {
    var random = new Random();

    var random1 = (random.nextDouble() * (max - min)) + min;
    var random2 = (random.nextDouble() * (max - min)) + min;
    var random3 = (random.nextDouble() * (max - min)) + min;

    return Point(random1, random2, random3);
  }
}
