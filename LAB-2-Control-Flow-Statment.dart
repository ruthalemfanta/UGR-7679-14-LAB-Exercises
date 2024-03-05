void main() {
  int first = 0;
  int second = 1;

  for (int i = 0; i < 10; i++) {
    print(first);

    int sum = first + second;
    first = second;
    second = sum;
  }
}
