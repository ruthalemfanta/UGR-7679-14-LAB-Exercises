
void main() {
  removeDuplicates(List list) {
    Set set = Set.from(list);
    return set.toList();
}

  List<int> numbers = [1, 2, 3, 2, 4, 3, 5, 1];
  List nonDuplicateNumbers = removeDuplicates(numbers);

  print(nonDuplicateNumbers);
}