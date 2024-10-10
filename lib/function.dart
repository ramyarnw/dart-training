import 'dart:io';
void main()
{
  int? a = int.parse(stdin.readLineSync()!);
  int? b = int.parse(stdin.readLineSync()!);
  int out = add(a,b);
  print(out);
}
int add(int a,int b)
{
  int result= a+b;
  return result;
}