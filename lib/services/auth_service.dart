import 'package:xperiences/services/localStorage.dart';

class AuthService {
  Future<bool> register(String name, String pass) async {
    LocalStorage ls = LocalStorage();
    try {
      ls.putUserNPasword();
      return true;
    } catch (e) {
      return false;
    }
  }
}
