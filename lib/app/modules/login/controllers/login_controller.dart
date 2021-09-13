import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';




import 'package:get_patterm_demo/app/data/repositories/local/local_auth_repository.dart';
import 'package:get_patterm_demo/app/data/repositories/remote/authentication_repository.dart';
import 'package:get_patterm_demo/app/data/models/request_token.dart';

import 'package:get_patterm_demo/app/routes/app_pages.dart';

class LoginController extends GetxController {
  final AuthenticationRepository _authenticationRepository = Get.find<AuthenticationRepository>();
  final LocalAuthRepository _localAuthRepository = Get.find<LocalAuthRepository>();
  //TODO: Implement

  String _username = '';
  String _password = '';

  void onUserNameChange(String text) {
    _username = text;
  }

  void onPasswordChange(String text) {
    _password = text;
  }


  

  void submit() async {
    try {
      RequestToken? requestToken = await _authenticationRepository.newRequestToken();

      final RequestToken? authRequestToken = await _authenticationRepository.authWithLogin(
        username: _username,
        password: _password,
        requestToken: requestToken!.requestToken,        
      );
      // print('Login ok ${authRequestToken!.expiresAt}');
      await _localAuthRepository.setSession(authRequestToken!);
      Get.offNamed(Routes.HOME);
      

    } catch (e) {
      print(e);
      // String title = 'Error';
      String? message = '';
      if (e is DioError) {
        if (e.response != null) {
          message = e.response!.statusMessage;
        } else {
          message = e.message;
        }
      }
      Get.dialog(AlertDialog(
        title: Text('Error'),
        content: Text(message!),
        actions: [
          TextButton(
            child: Text('Ok'),
            onPressed: () {
              Get.back();
            },
          )
        ],
      ));
    }
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
