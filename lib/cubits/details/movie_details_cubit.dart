import 'package:flutter_bloc/flutter_bloc.dart';
import 'movie_details_state.dart';
import 'package:movies_hub_app/models/movie.dart';
import 'package:movies_hub_app/models/movie_model.dart';

class MovieCubit extends Cubit<MovieState> {
  MovieCubit() : super(MovieInitial());

  Future<void> getmovie() async {
    emit(MovieLoading());
    try {
      final movies = await service().getmovie();
      emit(MovieLoaded(movies));
    } catch (e) {
      emit(MovieError(e.toString()));
    }
  }
}
