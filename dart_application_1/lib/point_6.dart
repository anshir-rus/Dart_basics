import 'dart:math';

class Point {
  double x = 0;
  double y = 0;
  double z = 0;

  Point(this.x, this.y, this.z);

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

    double pperimeter = ((ab + bc + ca) / 2);

    double result = sqrt(
        pperimeter * (pperimeter - ab) * (pperimeter - bc) * (pperimeter - ca));

    return result;
  }

  List<double> mycoord() {
    List<double> result = [x, y, z];
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
