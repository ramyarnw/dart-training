void main()
{
  Map<int,String>one = {1:'one',2:'two'};
  Map<int,String>two= {3:'three',4:'four'};
  Map<int,String>three= {5:'five',6:'six'};
  Map combine={};
  /*combine.addAll(one);
  combine.addAll(two);
  combine.addAll(three);*///combine 3 maps into one
  combine..addAll(one)..addAll(two)..addAll(three);
  print(combine);
}