import 'dart:math';

extension NumExtensions on num {
  bool get isInt => (this % 1) == 0;
  bool get isNatural => this > 0 && this.isInt;
}

class Calculator {
  int nod(int var1, int var2) {
    int a = 0;
    int b = 0;
    int c = 0;

    if (!var1.isNatural) {
      throw ArgumentError('$var1 не натуральное число');
    }

    if (!var2.isNatural) {
      throw ArgumentError('$var2 не натуральное число');
    }

    if (var1 > var2) {
      a = var1;
      b = var2;
    } else {
      a = var2;
      b = var1;
    }

    while (b != 0) {
      c = b;
      b = a % b;
      a = c;
    }

    return c;
  }

  int nok(int var1, int var2) {
    if (!var1.isNatural) {
      throw FormatException('$var1 не натуральное число');
    }

    if (!var2.isNatural) {
      throw FormatException('$var2 не натуральное число');
    }

    int result = var1 ~/ nod(var1, var2) * var2;

    return result;
  }

  List<int> multipliers(int number) {
    var list = <int>[];
    int a = number;
    int ost = 0;
    int counter = 0;
    int divider = 2;

    while (a >= 2) {
      ost = (a % divider);

      if (ost == 0) {
        a = a ~/ divider;
        list.insert(counter, divider);
        counter++;
      } else {
        divider++;
      }
    }
    return list;
  }

  String dextobin(int number) {
    String result = "";
    int a = number;
    int b = 0;
    int counter = 0;

    var list = <int>[];

    while (a != 0) {
      b = a % 2;
      a = a ~/ 2;
      list.insert(counter, b);
      counter++;
    }

    result = (list.reversed.join(''));

    return result;
  }

  int bintodex(String number) {
    int result = 0;

    if (RegExp(r'^[0-1]+$').hasMatch(number)) {
      for (int i = 0; i < number.length; i++) {
        result +=
            (int.parse(number[i]) * pow(2, (number.length - i - 1))).toInt();
      }
    }
    return result;
  }

  Map countWords<String, int>(List words) {
    var result = {};

    words.forEach((element) {
      if (result.containsKey(element)) {
        result[element] += 1;
      } else {
        result[element] = 1;
      }
    });

    return result;
  }

  List<String> numbers(List string) {
    var result = <String>[];

    string.forEach((element) {
      switch (element) {
        case 'one':
          result.add("1");
          break;
        case 'two':
          result.add("2");
          break;
        case 'three':
          result.add("3");
          break;
        case 'four':
          result.add("4");
          break;
        case 'five':
          result.add("5");
          break;
        case 'six':
          result.add("6");
          break;
        case 'seven':
          result.add("7");
          break;
        case 'eight':
          result.add("8");
          break;
        case 'nine':
          result.add("9");
          break;
      }
    });
    return result;
  }
}
