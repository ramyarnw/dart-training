enum Days{
  sun,
  mon,
  tues,
  wed,
  thurs,
  fri,
  sat
}
void main()
{
  print(Days.values);//  .values used to access the values of enum class
  Days.values.forEach((v)=>print('values:$v,index:${v.index}'));
  print('wed:${Days.wed},${Days.wed.index}'); // get index values by mentioning enum class name . value name
  print('mon index:${Days.mon.index}');
}