
  class Office {
    var offName;
    var offId;

    showOffice() {
      print("office name ${offName}");
      print("office id ${offId}");
    }
  }
  void main()
  {
    Office o = new Office();
    o.offName = "native";
    o.offId = 1;
    o.showOffice();
    NOffice no=NOffice(offName: "native", offId: 1);
    no.showOffice();
  }

  class NOffice{
  final String offName;
  final int offId;

  NOffice({required this.offName, required this.offId});
  showOffice() {
    print("office name ${offName}");
    print("office id ${offId}");
  }
  }