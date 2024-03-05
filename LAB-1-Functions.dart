void main() {
  averageCalculator(List<num> numbers) {
    num sum = 0;
    for (var number in numbers) {
      sum += number;
    }

    num result = sum / numbers.length;
    return result;
  }

  List<num> numbers = [1, 2, 3, 4, 5];

  var average = averageCalculator(numbers);
  print("The average is: $average");
}
