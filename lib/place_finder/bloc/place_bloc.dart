import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:iteso_parking/place_finder/place.dart';

part 'place_event.dart';
part 'place_state.dart';

class PlaceBloc extends Bloc<PlaceEvent, PlaceState> {
  PlaceBloc() : super(PlaceInitial()) {
    on<FindPlaceEvent>(_findPlace);
  }

  Place? asignedPlace;

  Future<void> _findPlace(event, emit) async {
    emit(FindPlaceLoadingState());

    var placeFinded = await _searchPlace();
    print(asignedPlace?.section);

    if (placeFinded == true) {
      emit(FindPlaceSuccessState());
    } else {
      emit(FindPlaceErrorState(error: 'Error'));
    }
  }

  Future<dynamic> _searchPlace() async {
    asignedPlace = dummyPlace;

    return true;
  }
}
