void main()
{
  Person n = Person();
  print(n.greet());
}
extension greeting on Person
{
  String greet() {
    return 'hello,${this.s}!';
  }
}
class Person{
  String s = "sam";
}
