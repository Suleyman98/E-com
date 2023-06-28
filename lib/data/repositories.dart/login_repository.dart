import 'package:shopping_app/data/datasource/login_data_source.dart';

import '../contracts/login_contracts.dart';

class LoginRepository implements LoginContract {
  @override
  Future<bool> login(String email, String password) {
    return LoginDataSource().login(email, password);
  }

  @override
  Future<bool> register(String email, String password) {
    return LoginDataSource().register(email, password);
  }
  //
}
