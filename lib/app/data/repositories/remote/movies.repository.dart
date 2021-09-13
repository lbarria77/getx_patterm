import 'package:get/get.dart';
import 'package:get_patterm_demo/app/data/models/movies.dart';
import 'package:get_patterm_demo/app/data/providers/remote/movies_api.dart';

class MoviesRepository {
  final MoviesApi _moviesApi = Get.find<MoviesApi>();

  Future<List<Movie>> getTopMovies() => _moviesApi.getTopMovies();
}