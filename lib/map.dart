void main()
{
  Map<String, int> mobile={'oppo':1,'vivo':2};//create
  print(mobile);
  print(mobile['vivo']);//access
  mobile['nokia']=3;//add elements
  print(mobile);
  mobile['oppo']=0;//update
  print(mobile);
  mobile.remove('oppo');//remove
  print(mobile);
  print(mobile.isEmpty);//map
  print(mobile.keys);
  print(mobile.isNotEmpty);
  print(mobile.length);
  print(mobile.values);
  print(mobile.containsKey('nokia'));//check existence
  for( var name in mobile.keys)
    {
      print('$name: ${mobile[name]}');//iteration
    }
    mobile.forEach((key,value) =>print('$key:$value'));


    }