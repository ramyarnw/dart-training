void main()
{
  List<String> names=['ram','sara','han','dino','hi','saran','a'];
  print(names);
  names.sort((a,b) => a.length.compareTo(b.length));//lenght sort names
  print(names);
  names.sort();//alpha sort
  print(names);
}