import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xperiences/providers/login_form_provider.dart';
import 'package:xperiences/services/localStorage.dart';
import 'package:xperiences/ui/decorations/input_decorations.dart';
import 'package:xperiences/ui/widgets/custom_input.dart';
import 'package:xperiences/ui/widgets/labels.dart';
import 'package:xperiences/ui/widgets/logo_login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: SafeArea(
            child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              LogoLogin(
                  welcome: 'Bienvenido',
                  text:
                      'Inicia sesión para disfrutar los beneficios de la experiencia'),
              /* Form(), */
              ChangeNotifierProvider(
                create: (_) => LoginFormProvider(),
                child: LoginForm(),
              ),
              const SizedBox(
                height: 80,
              ),
              Labels(
                  ruta: 'register',
                  txt: '¿No tienes cuenta?',
                  txtBt: 'Crea una ahora!'),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        )));
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController email = TextEditingController(text: '');
    final TextEditingController password = TextEditingController(text: '');
    final loginForm = Provider.of<LoginFormProvider>(context);
    return Container(
      child: Form(
          key: loginForm.formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              CustomInput(
                formfield: TextFormField(
                  controller: email,
                  onChanged: (value) => loginForm.email = value,
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecorations.authInputDecoration(
                    prefixIcon: Icons.email_outlined,
                    hintText: 'Correo Electrónico',
                  ),
                  validator: (value) {
                    String pattern =
                        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                    RegExp regExp = new RegExp(pattern);
                    return regExp.hasMatch(value ?? '')
                        ? null
                        : 'ingrese un correo valido';
                  },
                ),
              ),
              CustomInput(
                formfield: TextFormField(
                  controller: password,
                  onChanged: (value) => loginForm.password = value,
                  autocorrect: false,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecorations.authInputDecoration(
                    hintText: 'Contraseña',
                    prefixIcon: Icons.lock_outline,
                  ),
                  validator: (value) {
                    return (value != null && value.length >= 5)
                        ? null
                        : 'La contraseña debe ser de 5 caracteres';
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                  color: Colors.green.withOpacity(0.3),
                  elevation: 0,
                  disabledColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                    child: Text(
                      loginForm.isLoading ? 'Espere.' : 'Acceder',
                      style: TextStyle(color: Colors.green, fontSize: 16),
                    ),
                  ),
                  onPressed: loginForm.isLoading
                      ? null
                      : () async {
                          FocusScope.of(context).unfocus();
                          if (!loginForm.isValidForm()) return;
                          loginForm.isLoading = true;
                          await Future.delayed(Duration(seconds: 1));
                          bool res = await LocalStorage()
                              .getUserNPasword(email.text, password.text);
                          if (res == true) {
                            Navigator.pushReplacementNamed(context, 'location');
                            loginForm.isLoading = false;
                          } else {
                            loginForm.isLoading = false;
                          }
                        }),
            ],
          )),
    );
  }
}
