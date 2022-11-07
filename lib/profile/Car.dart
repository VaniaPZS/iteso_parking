class Car {
  String manufacturer;
  String model;
  int capacity;
  String plates;

  Car({
    required this.manufacturer,
    required this.model,
    required this.capacity,
    required this.plates,
  });
}

Car myCar = Car(
  manufacturer: 'Kia',
  model: 'Forte',
  capacity: 5,
  plates: 'abc12345',
);

Car myCar2 = Car(
  manufacturer: 'Honda',
  model: 'Accord',
  capacity: 5,
  plates: 'jak12345',
);
