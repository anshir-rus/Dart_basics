import 'dart:math';

void main(List<String> arguments) {
  var calculator = Calculator();
  var stringworks = StringWorks();
  var point = Point(10, 20, 0);

  var anotherPoint = Point(9, 13, 0);
  var thirdPoint = Point(13, 0, 10);
  var nullpoint = Point.beginpoint();
  var onepoint = Point.vectorone();
  var randompoint = Point.random(0, 10);
  var randompoint2 = Point.random(5, 15);
  var randompoint3 = Point.random(10, 20);

  List words = ['one', 'two', 'three', 'one', 'two', 'one'];
  List wordsAndNumbers = [
    'one',
    'two',
    'three',
    'cat',
    'dog',
    'nine',
    'seven',
    'smth'
  ];

  print("Задание 1:");
  print(calculator.nod(75, 210));
  print(calculator.nok(75, 210));
  print("");

  print("Задание 2");
  print(calculator.dextobin(117));
  print(calculator.bintodex(1110101));
  print("");

  print("Задание 3");
  print(stringworks.findnumbers("77 строка 123 с 456 числами 7 8 9"));
  print("");

  print("Задание 4");
  print(calculator.countWords(words));
  print("");

  print("Задание 5");
  print(calculator.numbers(wordsAndNumbers));
  print("");

  print("Задание 6");
  print(point.distanceTo(thirdPoint));
  print(point.square(point, anotherPoint, thirdPoint));
  print(nullpoint.mycoord());
  print(onepoint.mycoord());
  print(point.square(randompoint, randompoint2, randompoint3));
  print("");

  print("Задание 7");
  int number = 25;
  double stepen = 2;
  print("Корень $stepen степени из $number: ${(number).sqrtAll(stepen)}");
  print("");

  print("Задание 8");
  var generalUser = GeneralUser();
  var adminUser = AdminUser();
  var userManager = UserManager();

  print("Проверка метода getMailSystem: " +
      adminUser.getMailSystem("admin@mail.ru"));

  print("Проверка добавления пользователя");
  userManager.AddUser("User5", "user5@mail.com");
  userManager.ReturnAll();

  print("Проверка удаления пользователя");
  userManager.RemoveUser(2);
  userManager.ReturnAll();
}

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

class StringWorks {
  List findnumbers(String string) {
    List first = [];
    List result = [];
    int j = 0;

    first = string.split(' ');
    // print(first.length);

    for (int i = 0; i < first.length; i++) {
      if (RegExp(r'^[0-9]+$').hasMatch(first[i])) {
        result.insert(j, first[i]);
        j++;
      }
    }

    return result;
  }
}

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

class User {
  String email = "";
}

class AdminUser extends User with MailSytem {
  String name = "admin";
  int dostup = 1;
}

class GeneralUser extends User {
  String name = "";
  int dostup = 0;
}

mixin MailSytem {
  String email = '';

  getMailSystem(String email) {
    String result = "";
    int first = email.indexOf("@");
    result = email.substring(first + 1);
    return result;
  }
}

class UserManager<T extends User> {
  Map<int, List<String>> UserList = {
    1: ['admin', 'mailtest@gmail.com'],
    2: ['testuser2', 'test@test.com'],
    3: ['testuser3', 'smth@ya.ru']
  };

  void AddUser(String name, String email) {
    int maplength = UserList.length;

    UserList.addAll({
      maplength + 1: ['user4', 'user4@mail.ru']
    });
  }

  void RemoveUser(int id) {
    UserList.remove(id);
  }

  void ReturnAll() {
    UserList.forEach((key, value) {
      if (value[0] == 'admin') {
        print("Id:$key Name: ${value[0]} Email: " +
            AdminUser().getMailSystem(value[1]));
      } else {
        print("Id:$key Name: ${value[0]} Email: ${value[1]}");
      }
    });
  }
}
