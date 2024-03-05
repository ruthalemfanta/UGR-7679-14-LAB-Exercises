Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () => 'Data from fetch');
}

void main() {
  fetchData().then((result) {
    print(result);
  });
}