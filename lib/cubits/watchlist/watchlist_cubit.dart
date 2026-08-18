import 'package:flutter_bloc/flutter_bloc.dart';
import 'watchlist_state.dart';

class WatchlistCubit extends Cubit<WatchlistState> {
  WatchlistCubit() : super(WatchlistInitial());

  final List<dynamic> _watchlistMovies = [];

  // Getter لإتاحة الوصول للقائمة
  List<dynamic> get watchlistMovies => _watchlistMovies;

  void fetchWatchlist() {
    emit(WatchlistSuccess(List.from(_watchlistMovies)));
  }

  bool isBookmarked(dynamic movie) {
    return _watchlistMovies.any((item) => item.title == movie.title);
  }

  void addToWatchlist(dynamic movie) {
    if (!isBookmarked(movie)) {
      _watchlistMovies.add(movie);
      emit(WatchlistSuccess(List.from(_watchlistMovies)));
    }
  }

  void removeFromWatchlist(dynamic movie) {
    _watchlistMovies.removeWhere((item) => item.title == movie.title);
    emit(WatchlistSuccess(List.from(_watchlistMovies)));
  }
}