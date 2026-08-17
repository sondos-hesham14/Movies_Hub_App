import 'package:flutter/foundation.dart';

@immutable
abstract class ProfileState {}

class ProfileInitial extends ProfileState {}

class ProfileLoading extends ProfileState {}

class ProfileSuccess extends ProfileState {
  final String userName;
  final List<dynamic> favouriteMovies;

  ProfileSuccess({required this.userName, required this.favouriteMovies});
}

class ProfileError extends ProfileState {
  final String message;
  ProfileError(this.message);
}