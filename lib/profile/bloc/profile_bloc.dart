import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:iteso_parking/profile/car.dart';
import 'package:iteso_parking/profile/profile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileInitial()) {
    on<GetProfileEvent>(_getProfile);
    on<RegisterNewCarEvent>(_registerCar);
  }

  Profile? userProfile;

  Future<void> _registerCar(event, emit) async {
    emit(RegisterNewCarLoadingState());

    Car newCar = event.newCar;

    var postDone = await _postCar(newCar);

    if (postDone == true) {
      emit(RegisterNewCarSuccessState());
    } else {
      emit(RegisterNewCarErrorState(error: 'Error'));
    }
  }

  Future<dynamic> _postCar(Car newCar) async {
    Map<String, dynamic> car_map = {
      'manufacturer': newCar.manufacturer,
      'model': newCar.model,
      'capacity': newCar.capacity,
      'plates': newCar.plates,
      'imageUrl': newCar.imageUrl,
      'isActive': userProfile!.carsList.length == 0 ? true : newCar.isActive,
    };

    var user = FirebaseFirestore.instance
        .collection("user")
        .doc(FirebaseAuth.instance.currentUser!.uid);

    var carsList = user.collection("carsList");
    await carsList.add(car_map);

    return true;
  }

  Future<void> _getProfile(event, emit) async {

    emit(GetProfileLoadingState());

    var userFinded = await _profileGetter();

    if (userFinded == true) {
      emit(GetProfileSuccessState());
    } else {
      emit(GetProfileErrorState(error: 'Error'));
    }
  }

  Future<dynamic> _profileGetter() async {
    var user = await FirebaseFirestore.instance
        .collection("user")
        .doc(FirebaseAuth.instance.currentUser!.uid);

    var user_data = await FirebaseFirestore.instance
        .collection("user")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();
    // print(user_data.data());

    userProfile = Profile.fromJson(await user_data.data()!);

    var carsList_data = await user.collection("carsList").get();

    for (var doc in carsList_data.docs) {
      userProfile?.carsList.add(Car.fromJson(doc.data()));
    }

    return true;
  }
}
