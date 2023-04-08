class User {
  String email;
  User(this.email);
}

class AdminUser extends User with MailSytem {
  String name;
  int dostup = 1;

  AdminUser(this.name, super.email);
}

class GeneralUser extends User {
  String name;
  int dostup = 0;

  GeneralUser(this.name, super.email);
}

mixin MailSytem {
  getMailSystem(String email) {
    String result = "";
    int first = email.indexOf("@");
    result = email.substring(first + 1);
    return result;
  }
}

class UserManager<T extends User> {
  List spisok = <T>[];

  addUser(T user) => spisok.add(user);
  removeUser(T user) => spisok.removeAt(spisok.indexOf(user));

  returnMailAll() {
    for (var element in spisok) {
      if (element is AdminUser) {
        print(element.getMailSystem(element.email));
      } else {
        print(element.email);
      }
    }
  }

  List returnSpisok() {
    return spisok;
  }
}
