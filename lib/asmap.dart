void main()
{
  var words = <String>['fee', 'fi', 'fo', 'fum'];
  var map = words.asMap();  // {0: fee, 1: fi, 2: fo, 3: fum}
  var map1 = map.keys.toList(); // [0, 1, 2, 3]
  print(map1);
  final terrestrial = <int, String>{1: 'Mercury', 0: 'Venus', 10: 'Earth'};
  terrestrial.removeWhere((int key, String value) => key==0);
  print(terrestrial);

}