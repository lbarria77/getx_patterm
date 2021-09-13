import 'package:get/get.dart';

import 'package:get_patterm_demo/app/data/providers/remote/authentication_api.dart';
import 'package:get_patterm_demo/app/data/models/request_token.dart';

class AuthenticationRepository {
  final AuthentificationAPI _api = Get.find<AuthentificationAPI>();

  Future<RequestToken?> newRequestToken() => _api.newRequestToken();
  Future<RequestToken?> authWithLogin({
    required String username,
    required String password,
    required String requestToken,
  }) => _api.validateWithLogin(
        username: username,
        password: password,
        requestToken: requestToken,
      );
}
