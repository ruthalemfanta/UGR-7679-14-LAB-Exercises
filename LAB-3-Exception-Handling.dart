void main() {

  try {
    throw Exception('Exception');
  } catch (error) {
    print(error);
  } finally {
    print('executed');
  }

}