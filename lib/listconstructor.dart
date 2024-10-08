void main()
{
  final emptyList = <int>[];    //empty list
  print(emptyList.isEmpty); // true;
  print(emptyList.isNotEmpty);



  final growableList = List.empty(growable: true); // empty constructor
  growableList.add(1); // [1]
  print(growableList);

  //final fixedLengthList = List.empty(growable: false);
  //fixedLengthList.add(1); // error

}