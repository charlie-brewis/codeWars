/*
https://www.codewars.com/kata/5264d2b162488dc400000001/train/dart

Write a function that takes in a string of one or more words, and returns the same string, but with all words that have five or more letters reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.

Examples:

"Hey fellow warriors"  --> "Hey wollef sroirraw" 
"This is a test        --> "This is a test" 
"This is another test" --> "This is rehtona test"
*/

void main() {
  print(spinWords2("Hey fellow warriors"));
  print(spinWords2("This is a test"));
  print(spinWords2("This is another test"));
}

String spinWords(String str) {
  String output = '';
  for (String word in str.split(' ')) {
    output += (word.length >= 5) ? word.split('').reversed.join() : word;
    output += ' ';
  }
  return output.substring(0, output.length - 1);
}

String spinWords2(String str) {
  return str
      .split(' ')
      .map((word) => (word.length >= 5) ? word.split('').reversed.join() : word)
      .join(' ');
}
