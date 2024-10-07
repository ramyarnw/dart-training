import 'dart:io';
void main()
{
  print("enter how many numbers to add");
  int n = int.parse(stdin.readLineSync()!);
  int sum=0;
  for(int i=1;i<=n;i++)
    {
      sum = sum +i;

    }
  print(sum);
}