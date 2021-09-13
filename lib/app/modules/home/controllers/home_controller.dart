import 'package:get/get.dart';
import 'package:get_patterm_demo/app/data/models/movies.dart';
import 'package:get_patterm_demo/app/data/repositories/local/local_auth_repository.dart';
import 'package:get_patterm_demo/app/data/repositories/remote/movies.repository.dart';
import 'package:get_patterm_demo/app/routes/app_pages.dart';

class HomeController extends GetxController {
  final LocalAuthRepository _localAuthRepository =
      Get.find<LocalAuthRepository>();

  final MoviesRepository _moviesRepository = Get.find<MoviesRepository>();

  List<Movie> _movies = [];

  List<Movie> get movies => _movies;


  Future<void> logOut() async {
    await _localAuthRepository.clearSession();
    Get.offNamedUntil(Routes.LOGIN, (_) => false);
  }

  Future<void> _load() async {
    try {
      _movies = await _moviesRepository.getTopMovies();
      print('Movies::::: ${_movies.length}');
      update();
    } catch (e) {
      print(e);
    }
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    _load();
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
