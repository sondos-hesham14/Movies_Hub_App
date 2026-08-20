import 'package:flutter_bloc/flutter_bloc.dart';
import 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());

  void fetchProfileData() async {
    emit(ProfileLoading());
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      emit(ProfileSuccess(
        userName: "Username",
        email: "username@example.com",
        phone: "01012345678",
        password: "password123",
        favouriteMovies: [],
      ));
    } catch (e) {
      emit(ProfileError("Failed to load profile data"));
    }
  }

  void updateUserData({
    required String newName,
    required String newEmail,
    required String newPhone,
    required String newPassword,
  }) {
    if (state is ProfileSuccess) {
      final currentState = state as ProfileSuccess;
      emit(currentState.copyWith(
        userName: newName,
        email: newEmail,
        phone: newPhone,
        password: newPassword,
      ));
    }
  }
}