import 'package:http/http.dart';

class LoginDataSource {
  Future<bool> login(String email, String password) async {
    const String url = 'https://reqres.in/api/login';
    final uri = Uri.parse(url);
    final body = {
      "email": email,
      "password": password,
    };
    final Response response = await post(uri, body: body);
    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception();
    }
  }

  Future<bool> register(String email, String password) async {
    const String url = 'https://reqres.in/api/register';
    final uri = Uri.parse(url);
    final body = {"email": email, "password": password};
    final Response response = await post(uri, body: body);
    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception();
    }
  }
}
