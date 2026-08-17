import 'package:flutter_bloc/flutter_bloc.dart';
import 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());

  final List<dynamic> _favourites = [];

  // Fetch user profile data and favourite movies
  void fetchProfileData() async {
    emit(ProfileLoading());
    try {
      await Future.delayed(const Duration(milliseconds: 300));
      emit(ProfileSuccess(
        userName: 'User Name',
        favouriteMovies: List.from(_favourites),
      ));
    } catch (e) {
      emit(ProfileError('Failed to load profile data'));
    }
  }
  
  void toggleFavourite(dynamic movie) {
    if (_favourites.contains(movie)) {
      _favourites.remove(movie);
    } else {
      _favourites.add(movie);
    }
    emit(ProfileSuccess(
      userName: 'User Name',
      favouriteMovies: List.from(_favourites),
    ));
  }
}