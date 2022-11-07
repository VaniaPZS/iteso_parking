import 'package:iteso_parking/profile/car.dart';

class Profile {
  String name;
  String userNumber;
  String userType;
  List<Car> carsList;

  Profile({
    required this.name,
    required this.userNumber,
    required this.userType,
    required this.carsList,
  });
}

Profile studentTestProfile = Profile(
  name: "Carlos Flores",
  userNumber: "is727635",
  userType: "Student",
  carsList: [myCar, myCar2],
);
