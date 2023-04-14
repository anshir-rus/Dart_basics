class User {
  String email;
  User(this.email);
}

class AdminUser extends User with MailSytem {
  String name;
  int access = 1;

  AdminUser(this.name, super.email);
}

class GeneralUser extends User {
  String name;
  int access = 0;

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
  final List<T> _userList = <T>[];

  void addUser(T user) => _userList.add(user);
  void removeUser(T user) => _userList.removeAt(_userList.indexOf(user));

  String returnMailAll() {
    for (var element in _userList) {
      if (element is AdminUser) {
        print(element.getMailSystem(element.email));
      } else {
        print(element.email);
      }
    }
    return "";
  }

  List<T> get returnList => _userList;

  /*
  List<T> returnList() {
    return _userList;
  }
  */
}
