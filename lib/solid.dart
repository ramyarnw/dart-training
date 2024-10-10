class Vehicle {
  int getNumberOfWheels() {
    return 4;
  }
}

class Bicycle extends Vehicle {
  int getNumberOfWheels() {
    return 2;
  }
}

// calling code
int COST_PER_TIRE = 50;
int tireCost(Vehicle vehicle) {
  return COST_PER_TIRE * vehicle.getNumberOfWheels();
}
void main()
{
Bicycle bicycle = new Bicycle();
print(tireCost(bicycle));
}

