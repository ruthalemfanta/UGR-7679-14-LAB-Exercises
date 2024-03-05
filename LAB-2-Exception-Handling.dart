void main() {
  void throwException() {
  throw FormatException('Invalid format');
}


  try {
    throwException();
  } on FormatException catch (error) {
    print(error);
  }

}