import 'package:flutter_bloc/flutter_bloc.dart';
import 'watchlist_state.dart';

class WatchlistCubit extends Cubit<WatchlistState> {
  WatchlistCubit() : super(WatchlistInitial());

  final List<dynamic> _watchlistMovies = [];

  // Fetch watchlist movies (Simulation for API/DB calls)
  void fetchWatchlist() async {
    emit(WatchlistLoading());
    try {
      await Future.delayed(const Duration(milliseconds: 300));
      emit(WatchlistSuccess(List.from(_watchlistMovies)));
    } catch (e) {
      emit(WatchlistError('Failed to load watchlist movies'));
    }
  }

  void addToWatchlist(dynamic movie) {
    if (!_watchlistMovies.contains(movie)) {
      _watchlistMovies.add(movie);
      emit(WatchlistSuccess(List.from(_watchlistMovies)));
    }
  }

  void removeFromWatchlist(dynamic movie) {
    _watchlistMovies.remove(movie);
    emit(WatchlistSuccess(List.from(_watchlistMovies)));
  }
}