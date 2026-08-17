import 'package:dio/dio.dart';
import 'movie.dart';

class service {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {'api_key': '6961a5d3cf78c748ab254604facb546b'},
    ),
  );

  Future<List<movie>> getmovie() async {
    try {
      final Response<dynamic> response = await dio.get('/movie/popular');
      return (response.data['results'] as List)
          .map((json) => movie.fromjson(json))
          .toList();
    } on DioException catch (e) {
      throw Exception('Failed to load movie: $e');
    }
  }
}
