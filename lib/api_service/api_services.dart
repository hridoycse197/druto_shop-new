import 'package:get/get_connect/connect.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';

import '../apps/auth_page/model/login_request_model.dart';
import '../apps/auth_page/model/signin_model.dart';

class LoginApiService extends GetConnect {
  final String loginUrl = 'https://script.drutosoft.com/grocery/api/login';
  final String registerUrl = 'https://reqres.in/api/register';

  Future<LoginResposeModel?> fetchLogin(LoginRequestModel user) async {
    final response = await post(loginUrl, user.toJson());

    if (response.statusCode == HttpStatus.ok) {
      return LoginResposeModel.fromJson(response.body);
    } else {
      return null;
    }
  }

  // Future<RegisterResponseModel?> fetchRegister(
  //     RegisterRequestModel model) async {
  //   final response = await post(registerUrl, model.toJson());

  //   if (response.statusCode == HttpStatus.ok) {
  //     return RegisterResponseModel.fromJson(response.body);
  //   } else {
  //     return null;
  //   }
  // }
}
