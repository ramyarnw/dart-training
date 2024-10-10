void main() {

  StudentDb s = new StudentDb();
  TwoOpFun addition = add;
  int Function(int,int) multiplication = mul;
  print("1+2=${addition(1,2)} 1*2=${multiplication(1,2)}") ;
  print("Value is ${s.value}");

}

typedef INT = int;
typedef StudentDb = Annauniversitythirdyearstudentdatabase;
typedef TwoOpFun = int Function(INT,INT);
int add(int a,int b)=>a+b;
int mul(int a,int b)=>a*b;

class Annauniversitythirdyearstudentdatabase
{
  int value = 10;
  void display()
  {
print("typedef function");
  }
}


