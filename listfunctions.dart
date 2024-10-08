void main()
{

  final now = DateTime.now();
  final berlinWallFell = DateTime.utc(1989, 11, 9);
  final moonLanding = DateTime.parse('1969-07-20 20:18:04Z');
  final dentistAppointment = DateTime(2017, 9, 7, 17, 30);
  print(berlinWallFell.year); // 1989
  print(berlinWallFell.month); // 11
  print(berlinWallFell.day);
  print(moonLanding.hour); // 20
  print(moonLanding.minute);
  print(dentistAppointment.year);
}


