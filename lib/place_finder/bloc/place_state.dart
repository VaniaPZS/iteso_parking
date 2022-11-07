part of 'place_bloc.dart';

abstract class PlaceState extends Equatable {
  const PlaceState();

  @override
  List<Object> get props => [];
}

class PlaceInitial extends PlaceState {}

class FindPlaceSuccessState extends PlaceState {
  @override
  List<Object> get props => [];
}

class FindPlaceErrorState extends PlaceState {
  final String error;

  FindPlaceErrorState({required this.error});
}

class FindPlaceLoadingState extends PlaceState {}
