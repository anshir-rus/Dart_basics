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
