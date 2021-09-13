import 'package:get/get.dart';
import 'package:get_patterm_demo/app/modules/login/controllers/login_controller.dart';

import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}
