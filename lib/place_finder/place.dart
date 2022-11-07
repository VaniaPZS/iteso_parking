class Place {
  String section;
  int number;
  double longitude;
  double latitude;

  Place({
    required this.section,
    required this.number,
    required this.longitude,
    required this.latitude,
  });
}

Place dummyPlace = Place(
  section: 'B',
  number: 022,
  longitude: 20.608530,
  latitude: -103.417209,
);
