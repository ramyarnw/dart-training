
import 'dart:io';
import 'dart:math';
void main() {
  print("type any number");
  int num = int.parse(stdin.readLineSync()!);
  isArm(num);
}
  void isArm(int number) {
    int t,
        digit = 0,
        sum = 0,
        last = 0;
    t = number;
    while (t > 0) {
      t = t ~/ 10;
      digit++;
    }
    t = number;
    while (t > 0) {
      last = t % 10;
      sum = sum + pow(last, digit) as int;
      t = t ~/ 10;
    }

    if (number == sum)
      stdout.write("arm");
    else
      stdout.write("not");
  }


