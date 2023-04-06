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
