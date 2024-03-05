void main() {
  keyValuePairMap(Map map) {
    map.forEach((key, value) {
      print('$key: $value');
    });
  }

  Map<String, int> exampleMap = {
    'Pizza': 10,
    'Burger': 12,
    'Salad': 7,
  };
  keyValuePairMap(exampleMap);
}
