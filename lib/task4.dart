void main()
{
  Map<int,String>one = {1:'one',2:'two'};
  Map<int,String>two= {3:'three',4:'four'};
  one.addAll(two);//add elements from one to another
  print(one);
}