import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:iteso_parking/profile/profile.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileInitial()) {
    on<GetProfileEvent>(_getProfile);
  }

  Profile? userProfile;

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
    userProfile = studentTestProfile;
    return true;
  }
}
