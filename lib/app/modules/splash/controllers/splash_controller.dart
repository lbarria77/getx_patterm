import 'package:get/get.dart';

import 'package:get_patterm_demo/app/data/repositories/local/local_auth_repository.dart';
import 'package:get_patterm_demo/app/data/models/request_token.dart';


import 'package:get_patterm_demo/app/routes/app_pages.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  
  final LocalAuthRepository _localauthRepository = Get.find<LocalAuthRepository>();

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  _init() async {
    try {
      // await Future.delayed(Duration(seconds: 2));

      final RequestToken? requestToken = await _localauthRepository.session;
      

      Get.offNamed(requestToken != null ? Routes.HOME : Routes.LOGIN);

    } catch (e) {
      print(e);
    }
  }

  @override
  void onReady() {
    _init();
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
