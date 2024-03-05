void main() {
  int highestNumber(List<int> numbers) {
  int highest = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > highest) {
      highest = numbers[i];
    }
  }

  return highest;
}

List<int> numbers = [1, 2, 3, 4, 5];
  int highest = highestNumber(numbers);

  print("The highest number is: $highest");

}