import 'dart:math';

class Calculator {
  int nod(int var1, int var2) {
    int a = 0;
    int b = 0;
    int c = 0;

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
    int result = var1 ~/ nod(var1, var2) * var2;

    return result;
  }

  List mnozh(int number) {
    var list = [];
    int a = number;
    int ost = 0;
    int counter = 0;
    int divider = 2;

    while (a >= 2) {
      //print(a);
      ost = a % divider;

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

  int dextobin(int number) {
    int result = 0;
    int a = number;
    int b = 0;
    int counter = 0;

    var list = [];

    while (a != 0) {
      b = a % 2;
      a = a ~/ 2;
      list.insert(counter, b);
      counter++;
    }

    result = int.parse(list.reversed.join(''));

    return result;
  }

  int bintodex(int number) {
    String str = '';
    int result = 0;

    str = number.toString();

    if (RegExp(r'^[0-1]+$').hasMatch(str)) {
      for (int i = 0; i < str.length; i++) {
        result += (int.parse(str[i]) * pow(2, (str.length - i - 1))).toInt();
      }
    }
    return result;
  }

  Map countWords<string, int>(List words) {
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

  List numbers(List string) {
    var result = [];
    int counter = 0;
    string.forEach((element) {
      switch (string[counter]) {
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
      counter++;
    });
    return result;
  }
}
