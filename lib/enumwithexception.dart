enum OptionColor{
  red,
  blue,
  //green
}
extension SelectOptionColor on OptionColor{

  String get displayTitle {
    switch (this) {
      case OptionColor.red:
        return 'red';
      case OptionColor.blue:
        return 'blue';
    //case OptionColor:green:
    //return 'green';
      default:
        return 'no option';
    }
  }

}
void main()
{
  print("qwertyuio".everAl);

  print(OptionColor.red.displayTitle);
}


extension StringUI on String{
String  get everAl {
  return this;
}
}