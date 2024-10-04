void main() {
  List number = [10, 5, 2, 16,11];
    number.removeWhere((item)=> item%2!=0);
  //if (number.any((n) => n == 2)) {
    print(number);
  }

  