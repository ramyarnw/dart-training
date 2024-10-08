void main()
{
 /* final fixedLengthList = List<int>.filled(5, 0); // Creates fixed-length list.
  print(fixedLengthList); // [0, 0, 0, 0, 0]
  fixedLengthList[0] = 87;
  fixedLengthList.setAll(1, [1, 2, 3]);
  print(fixedLengthList); // [87, 1, 2, 3, 0]*/
  //fixedLengthList.length = 0;
  //fixedLengthList.add(499);


  final growableList = <String>['A', 'B'];
  growableList[0] = 'G';
  print(growableList); // [G, B]
  growableList.add('X');
  growableList.addAll({'C', 'B'});
  print(growableList); // [G, B, X, C, B]
  final firstIndexB = growableList.indexOf('B'); // 1
  growableList.removeLast();
  print(growableList); // [G, B, X]
  growableList.insert(2, 'New');
  print(growableList); // [G, New, B, X]
  growableList.shuffle();
  print(growableList); // e.g. [AB, F, A, F]
  growableList.replaceRange(0, 2, ['AB', 'D']);
  print(growableList); // [AB, A, B, X]

}