void main()
{
  Map<int, String>number={5:'five',2:'two',7:'seven'};
  var sortedByKeyMap = Map.fromEntries(
      number.entries.toList()..sort((e1, e2) => e1.key.compareTo(e2.key)));

  print(sortedByKeyMap);
  var sortedByValueMap = Map.fromEntries(
      number.entries.toList()..sort((e1,e2) => e1.value.compareTo(e2.value)));
  print(sortedByValueMap);
}