enum OptionColor{
  red,
  blue,
  //green
}
extension SelectOptionColor on OptionColor{
  //String get name => describeEnum(this);
  static String t = OptionColor.values as String;

  String get displayTitle {
    switch (t) {
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
  print(OptionColor.values);
  dynamic t;
}