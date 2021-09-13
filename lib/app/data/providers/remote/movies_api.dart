import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;
import 'package:get_patterm_demo/app/data/models/movies.dart';
import 'package:get_patterm_demo/app/utils/constants.dart';

class MoviesApi {
  final Dio _dio = Get.find<Dio>();

  Future<List<Movie>> getTopMovies() async {
    final Response response =
        await _dio.get('/movie/top_rated', queryParameters: {
      "api_key": Constants.THE_MOVIE_DB_API_KEY,
      "language": 'es-ES',
      "region": 'es-ES'
    });

    return (response.data['results'] as List)
        .map((e) => Movie.fromJson(e))
        .toList();
  }
}
