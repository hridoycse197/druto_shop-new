import 'package:get/get_connect/connect.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';

import '../pages/auth_pages/model/signin_model.dart';

class LoginApiService extends GetConnect {
  final String loginUrl = 'https://script.drutosoft.com/grocery/api/login';
  final String registerUrl = 'https://reqres.in/api/register';

  Future<LoginModel?> fetchLogin(LoginModel model) async {
    final response = await post(loginUrl, model.toJson());

    if (response.statusCode == HttpStatus.ok) {
      return LoginModel.fromJson(response.body);
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
