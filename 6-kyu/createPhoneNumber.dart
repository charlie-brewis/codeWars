/*
https://www.codewars.com/kata/525f50e3b73515a6db000b83/train/dart


Write a function that accepts an array of 10 integers (between 0 and 9), that returns a string of those numbers in the form of a phone number.

Example
createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) // => returns "(123) 456-7890"
The returned format must be correct in order to complete this challenge.

Don't forget the space after the closing parentheses!
*/

void main() {
  print(createPhoneNumber3([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]));
}

String createPhoneNumber(List numbers) {
  String output = '(';
  for (int i = 0; i < numbers.length; i++) {
    int number = numbers[i];
    output += number.toString();
    if (i == 2) {
      output += ') ';
    }
    if (i == 5) {
      output += '-';
    }
  }
  return output;
}

String createPhoneNumber2(List<int> numbers) {
  List<String> stringNumbers =
      List.from(numbers.map((number) => number.toString()));
  stringNumbers.insert(0, '(');
  stringNumbers.insert(4, ') ');
  stringNumbers.insert(8, '-');
  return stringNumbers.join('');
}

String createPhoneNumber3(List<int> numbers) {
  String jointNumbers = numbers.join();
  return "(${jointNumbers.substring(0, 3)}) ${jointNumbers.substring(3, 6)}-${jointNumbers.substring(6)}";
}
