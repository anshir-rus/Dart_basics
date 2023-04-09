import 'package:dart_application_1/calculator1_2_4_5.dart';
import 'package:dart_application_1/stringworks_3.dart';
import 'package:dart_application_1/point_6.dart';
import 'package:dart_application_1/algorythm_7.dart';
import 'package:dart_application_1/user_8.dart';

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
  print(calculator.multipliers(75));
  print("");

  print("Задание 2");
  print(calculator.dextobin(117));
  print(calculator.bintodex("1110101"));
  print("");

/*
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
*/

  print("Задание 8");
  var generalUser = GeneralUser("myname", "email111@email.ru");
  var generalUser_2 = GeneralUser("Name2", "email2@email.ru");
  var adminUser = AdminUser("admin", "admin@mail.ru");
  var userManager = UserManager();

  print("Добавить в список");
  userManager.addUser(generalUser);
  userManager.addUser(generalUser_2);
  userManager.addUser(adminUser);
  print("");

  print("Вернуть почту");
  print(userManager.returnMailAll());
  print("");

  print("Вернуть cписок");
  print(userManager.returnSpisok());
  print("");

  print("Удалить пользователя");
  userManager.removeUser(generalUser_2);
  print("");

  print("Вернуть cписок");
  print(userManager.returnSpisok());
  print("");

  print("Проверка метода getMailSystem: " +
      adminUser.getMailSystem("admin@mail.ru"));

/*
  print("Проверка добавления пользователя");
  userManager.AddUser("User5", "user5@mail.com");
  userManager.ReturnAll();

  print("Проверка удаления пользователя");
  userManager.RemoveUser(2);
  userManager.ReturnAll();
  */
}
