Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Data from fetch';
}

void main() async {
  String result = await fetchData();
  print(result);

}