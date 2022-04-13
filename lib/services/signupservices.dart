import '../models/sign_up_model.dart';
import 'package:http/http.dart' as http;

class SignUpServices {
  Future<SignUpModel?> createUser(String fullName, String email, int password,
      String passwordConfirmation) async {
    final String apiUrl = "https://script.drutosoft.com/grocery/api/register";
    final response = await http.post(Uri.parse(apiUrl), body: {
      "full_name": fullName,
      "email": email,
      "password": password,
      "password_confirmation": passwordConfirmation,
    });
    if (response.statusCode == 201) {
      final String responsString = response.body;
      return signUpModelFromJson(responsString);
    } else {
      return null;
    }
  }
}
