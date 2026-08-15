import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  // دالة جلب الأفلام - نترك المكان جاهز لاستدعاء الـ API من Dev 6
  void fetchHomeMovies() async {
    emit(HomeLoading());
    try {
      // Dev 6 هيستدعي الـ API هنا ويرجع البيانات الحقيقية
      // حالياً نمرر قائمة فاضية لحين ربط الـ API
      emit(HomeLoaded(
        popularMovies: [],
        topRatedMovies: [],
      ));
    } catch (e) {
      emit(HomeError(message: 'Failed to load movies'));
    }
  }
}