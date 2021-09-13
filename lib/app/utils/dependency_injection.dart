import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:get_patterm_demo/app/data/providers/local/local_auth.dart';
import 'package:get_patterm_demo/app/data/providers/remote/authentication_api.dart';
import 'package:get_patterm_demo/app/data/providers/remote/movies_api.dart';
import 'package:get_patterm_demo/app/data/repositories/local/local_auth_repository.dart';

import 'package:get_patterm_demo/app/data/repositories/remote/authentication_repository.dart';
import 'package:get_patterm_demo/app/data/repositories/remote/movies.repository.dart';


class DependencyInjection {
  static void init() {

    Get.put<FlutterSecureStorage>(FlutterSecureStorage());

    Get.lazyPut(() => Dio(BaseOptions(baseUrl: 'https://api.themoviedb.org/3')));

    // Get.put(() => Dio(BaseOptions(baseUrl: 'https://api.themoviedb.org/3')));


    // Providers
    Get.put<AuthentificationAPI>(AuthentificationAPI());
    Get.put<LocalAuth>(LocalAuth());
    Get.put<MoviesApi>(MoviesApi());


    // Repositories
    Get.put<AuthenticationRepository>(AuthenticationRepository());
    Get.put<LocalAuthRepository>(LocalAuthRepository());
    Get.put<MoviesRepository>(MoviesRepository());
  }
}