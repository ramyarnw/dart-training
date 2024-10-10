void main()
{
  final Map<int,String>veg={1:'carrot',2:'beet',3:'broccoli'};
  print(veg);
  print(veg.containsValue('carrot'));
  print(veg.containsKey(2));
  final veg1= <int,String>{4:'capsicum',5:'onion'};
veg.addEntries(veg1.entries);
print(veg);
  
}