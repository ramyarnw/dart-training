
class Bike
{
  int speed =100;
  void display()
  {
    print("Parent - Bike speed is good");
  }
  Bike()
  {
    print("parent class part");
  }
}
class Car extends Bike
{
  int speed = 150;
  void display()
  {
    print("Car speed is good");
  }
  Car():super()
  {
    print("child class part");
  }
  void show()
  {
    print("speed is ${speed}");//without super- corresponding class value will display
    print("speed is ${super.speed}");//super keyword - main class value will display
    super.display();//super keyword in method,main class method displayed
    display();//coresponding class method displayed

  }
}
void main()
{
  Car c  = new Car();
c.show();
}