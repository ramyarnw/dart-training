
mixin Breathing{
  swim() => print("breathing");
}
mixin Walking {
  walk() => print("walking");
}
mixin Coding {
  code() => print("coding");
}
class Human with Walking{}
  class Developer with Walking, Coding{}

void main() async {
  final human = Human();
  final dev = Developer();
  human.walk();
  dev.. walk() .. code();
}