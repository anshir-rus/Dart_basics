class StringWorks {
  List<int> findnumbers(String string) {
    List<String> first = <String>[];
    List<int> result = <int>[];

    first = string.split(' ');

    for (int i = 0; i < first.length; i++) {
      if (RegExp(r'^[0-9]+$').hasMatch(first[i])) {
        result.add(int.parse(first[i]));
      }
    }

    return result;
  }
}
