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
  List userList = <T>[];

  void addUser(T user) => userList.add(user);
  void removeUser(T user) => userList.removeAt(userList.indexOf(user));

  String returnMailAll() {
    for (var element in userList) {
      if (element is AdminUser) {
        print(element.getMailSystem(element.email));
      } else {
        print(element.email);
      }
    }
    return "";
  }

  List returnSpisok() {
    return userList;
  }
}
