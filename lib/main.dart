import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_patterm_demo/app/modules/splash/bindings/splash_binding.dart';
import 'package:get_patterm_demo/app/utils/dependency_injection.dart';

import 'app/routes/app_pages.dart';

void main() {
  DependencyInjection.init();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Get Patterm ",
      initialBinding: SplashBinding(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),    
  );
}
