
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
  }
