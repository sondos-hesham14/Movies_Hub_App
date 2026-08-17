import 'package:flutter/foundation.dart';
import '../models/movie_model.dart';
@immutable
abstract class MovieDetailsState {}

class MovieDetailsInitial extends MovieDetailsState {}

class MovieDetailsLoading extends MovieDetailsState {}

class MovieDetailsLoaded extends MovieDetailsState {
  final Movie movie;
  final bool isBookmarked;

  MovieDetailsLoaded({
    required this.movie,
    this.isBookmarked = false,
  });

  MovieDetailsLoaded copyWith({
    Movie? movie,
    bool? isBookmarked,
  }) {
    return MovieDetailsLoaded(
      movie: movie ?? this.movie,
      isBookmarked: isBookmarked ?? this.isBookmarked,
    );
  }
}

class MovieDetailsError extends MovieDetailsState {
  final String message;
  MovieDetailsError(this.message);
}
