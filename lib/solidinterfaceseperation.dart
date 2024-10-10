
abstract class DataAccess
{
void typeName();
void typeAge();
}
abstract class SubDataAccess
{
  void typeGender();
}
class Data implements DataAccess, SubDataAccess
{
  void typeName(){
    String a ="don";
  }
  void typeAge(){
    int c = 15;
  }
  void typeGender(){
    String b = "male";
  }
}
void main()
{

}