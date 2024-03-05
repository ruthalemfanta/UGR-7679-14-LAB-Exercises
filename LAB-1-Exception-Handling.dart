void main() {
  void throwException() {
  throw Exception('Custom Exception');
}

  try {
    throwException();
  } catch (error) {
    print(error);
  }

}