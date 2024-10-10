
import 'extensionmethod.dart';

/*void main()
{
  //Bind to new variables
  var (greeting, ticket) = greet("Dedan");
  print("$greeting $ticket");

//Reassign existing variables
  String greeting2 = "";
  int ticket2 = 0;
  (greeting2, ticket2) = greet("Dedan");
  print("$greeting2 $ticket2"); 
}

greet(String s) {

}

*/
void main() {
  final (value1,value2)=returnMultipleValues();
  print(value1);
  print(value2);
  final (integer,string_value)=returnDifferentDatatypes();
  print(integer);
  print(string_value);
}

// function
(int,int) returnMultipleValues(){
  return(1,2);
}

// Function returning values having
// different datatypes in a single line
(int,String)  returnDifferentDatatypes(){
  return(2,"This is a string");
}