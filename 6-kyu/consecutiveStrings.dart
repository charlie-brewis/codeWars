/*
https://www.codewars.com/kata/56a5d994ac971f1ac500003e/train/dart

You are given an array(list) strarr of strings and an integer k. Your task is to return the first longest string consisting of k consecutive strings taken in the array.

Examples:
  strarr = ["tree", "foling", "trashy", "blue", "abcdef", "uvwxyz"], k = 2

  Concatenate the consecutive strings of strarr by 2, we get:

  treefoling   (length 10)  concatenation of strarr[0] and strarr[1]
  folingtrashy ("      12)  concatenation of strarr[1] and strarr[2]
  trashyblue   ("      10)  concatenation of strarr[2] and strarr[3]
  blueabcdef   ("      10)  concatenation of strarr[3] and strarr[4]
  abcdefuvwxyz ("      12)  concatenation of strarr[4] and strarr[5]

  Two strings are the longest: "folingtrashy" and "abcdefuvwxyz".
  The first that came is "folingtrashy" so 
  longest_consec(strarr, 2) should return "folingtrashy".

  In the same way:
  longest_consec(["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"], 2) --> "abigailtheta"
  n being the length of the string array, if n = 0 or k > n or k <= 0 return "" (return Nothing in Elm, "nothing" in Erlang).

Note
consecutive strings : follow one after another without an interruption
*/

void main() {
  print(longestConsec([
    'ejjjjmmtthh',
    'zxxuueeg',
    'aanlljrrrxx',
    'dqqqaaabbb',
    'oocccffuucccjjjkkkjyyyeehh'
  ], 1));
}

String longestConsec(List<String> strarr, int k) {
  int n = strarr.length;
  if (n == 0 || k > n || k <= 0) {
    return '';
  }

  String longestString = '';
  // n - k + 1 to allow for indexing space for sublist
  for (int i = 0; i < n - k + 1; i++) {
    String currString = strarr.sublist(i, i + k).join();
    longestString =
        (currString.length > longestString.length) ? currString : longestString;
  }
  return longestString;
}
