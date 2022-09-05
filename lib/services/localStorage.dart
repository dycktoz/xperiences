import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  SharedPreferences? prefs;

  // ignore: non_constant_identifier_names
  //// Regresa una lista de string
  //  0 = name, 1 = pass
  ////
  Future<bool> getUserNPasword(String emailInput, String passwordInput) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String name = await prefs.getString('name') ?? '';
    String pass = await prefs.getString('password') ?? '';
    String email = await prefs.getString('email') ?? '';

    if (email == emailInput && pass == passwordInput) {
      return true;
    } else {
      return false;
    }
  }

  Future<String> getuser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String name = await prefs.getString('name') ?? '';
    return name;
  }

  Future<String> getemail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String email = await prefs.getString('email') ?? '';
    return email;
  }

  Future<void> putUserNPasword() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', 'Eduardo Lopez');
    await prefs.setString('email', 'usuario_prueba@gmail.com');
    await prefs.setString('password', 'prueba');
  }
}
