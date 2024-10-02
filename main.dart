void main() {
  // Write your code here

//Sum
  List<int> numbers = [5, 3, 15, 4, 1];
  int sum = 0;
  numbers.forEach((number) {
    sum += number;
  });
  print("Sum = $sum");

//Largest
  int largest = numbers[0];
  numbers.forEach((number) {
    if (largest < number) {
      largest = number;
    }
  });
  print("Largest number = $largest");

// Filter
  List<int> ages = [10, 11, 13, 22, 40, 60];

  int minAge = 18;

  List<int> allowed = filterVisitors(ages, minAge);

  print("Allowed: $allowed");

  //for odd numbers
  print(findOdds([2, 4, 5, 6, 7]));
}

// Function to filter
List<int> filterVisitors(List<int> ages, int minAge) {
  List<int> filter = [];

  ages.forEach((age) {
    if (age >= minAge) {
      filter.add(age);
    }
  });

  return filter;
}

//Will return 0 if there is no Odd number
int findOdds(List<int> number) {
  return number.firstWhere((number) => number.isOdd, orElse: () => 0);
}
