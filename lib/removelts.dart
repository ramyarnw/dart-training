void main() {
  List<String> names=['ram','sara','han','dino','hi','saran','a'];
  print(names);
  names.removeWhere((item) => item.length == 3);
  print(names);
  final retVal = names.removeLast();
  print(names);
  final retVal1 = names.removeAt(2);
  print(names);

}