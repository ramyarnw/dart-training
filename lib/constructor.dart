void main()
{

  Office o = new Office("native", 1);
  Office o1 = new Office.show();
  Office o2 = new Office.newData(" new data arrived");
  //Office o3 = new Office.addData("location");
  Office.announcement = "done";

}
class Office
{
  //String a;
  static String announcement='';//static keyword
    Office(String name, int id)//para construct
  {
    print("office name is ${name}");
    print("office id is ${id}");
  }
  Office.show()//empty construct
  {

  }
  Office.newData(String data)//multi construct
  {
    print("..${data}");
    print("announcement is ${announcement}");
    print("office data closed");
  }
  /*Office.addData(String a)
  {
    this.a = a;
    print("string is ..${a}");
  }*/
}