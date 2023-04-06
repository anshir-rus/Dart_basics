extension Algorythm on num {
  double modul() {
    double number = toDouble();

    number > 0 ? number : number *= -1;
    return number;
  }

  double sqrtAll(double root) {
    double number = toDouble();
    double x0 = number / root;
    double xn = number;
    double pogreshnost = 0.000000001;
    int j = 0;
    int i = 0;

    while ((x0 - xn).modul() >= pogreshnost) {
      xn = number;
      for (i = 1; i < root; i++) {
        xn = xn / x0;
      }
      x0 = 0.5 * (xn + x0);

      j++;
    }
    //print("Итераций: $j");
    //print("Корень: $xn");

    return xn;
  }
}
