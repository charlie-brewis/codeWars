/* 
https://www.codewars.com/kata/585cf93f6ad5e0d9bf000010

Mount the Bowling Pins!
Task:
Did you ever play Bowling? Short: You have to throw a bowl into 10 Pins arranged like this:

I I I I  # each Pin has a Number:    7 8 9 10
 I I I                                4 5 6
  I I                                  2 3
   I                                    1
You will get an array of integers between 1 and 10, e.g. [3, 5, 9], and have to remove them from the field like this:

I I   I
 I   I
  I   
   I   
Return a string with the current field.

Note that:
  The pins rows are separated by a newline (\n)
  Each Line must be 7 chars long
  Fill the missing pins with a space character ( )
Have fun!
*/

void main() {
  print(bowlingPins([1, 2, 10]));
  // print("I I I  \n I I I \n    I  \n       ");
}

String bowlingPins(List<int> pins) {
  Map<int, String> pinsMap = {
    7: 'I',
    8: ' I',
    9: ' I',
    10: ' I',
    4: ' I',
    5: ' I',
    6: ' I',
    2: '  I',
    3: ' I',
    1: '   I',
  };
  List<int> breakCodes = [10, 6, 3];
  String output = '';
  for (int pinKey in pinsMap.keys) {
    output += (pins.contains(pinKey))
        ? ' ' *
            (pinsMap[pinKey]!.split('').where((char) => char == ' ').length +
                1) // number of spaces in the pin char + 1 for the removed pin - for padding of left-side pins
        : pinsMap[pinKey]!;
    output += (breakCodes.contains(pinKey)) ? '\n' : '';
  }
  return output;
}
