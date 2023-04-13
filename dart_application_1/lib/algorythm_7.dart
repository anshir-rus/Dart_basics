extension Algorythm on num {
  double modulus() {
    double number = toDouble();

    number > 0 ? number : number *= -1;
    return number;
  }

  double sqrtAll(double root) {
    double number = toDouble();
    double x0 = number / root;
    double xn = number;
    double error = 0.000000001;
    int j = 0;
    int i = 0;

    while ((x0 - xn).modulus() >= error) {
      xn = number;
      for (i = 1; i < root; i++) {
        xn = xn / x0;
      }
      x0 = 0.5 * (xn + x0);

      j++;
    }

    return xn;
  }
}
