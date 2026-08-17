import 'package:flutter_bloc/flutter_bloc.dart';
import 'movie_details_state.dart';
import '../../models/movie_model.dart'; 

class MovieDetailsCubit extends Cubit<MovieDetailsState> {
  MovieDetailsCubit() : super(MovieDetailsInitial());

  void loadMovieDetails(Movie movie) {
    emit(MovieDetailsLoading());
    try {
      emit(MovieDetailsLoaded(movie: movie));
    } catch (e) {
      emit(MovieDetailsError("Failed to load movie details"));
    }
  }

  void toggleBookmark() {
    if (state is MovieDetailsLoaded) {
      final currentState = state as MovieDetailsLoaded;
      emit(currentState.copyWith(
        isBookmarked: !currentState.isBookmarked,
      ));
    }
  }
}
