class Location1 {
  double lat;
  double lon;
  Location1({
    required this.lat,
    required this.lon,
  });

}
class Location2  extends Location1{
  Location2({required super.lat, required super.lon});

}

void main() {
  var location2 = (lat: 10.0, lon: 20.0);
  final lat = location2.lat;
  final lon = location2.lon;
  print('($lat, $lon)');

  (double, double) location1 = (30.0, 40.0);
  final lat1= location1.$1;
  final lon2= location1.$2;
  print('($lat1, $lon2)');
}

