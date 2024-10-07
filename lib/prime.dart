import 'dart:io';
void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(primeNumber(n));
}

bool primeNumber(int number) {
  if (number < 2) {
    return false;
  }
  for (int i = 2; i < number; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}
