import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter/material.dart';
import 'package:xperiences/ui/widgets/settings_count_card.dart';
import 'package:xperiences/ui/widgets/settings_id_card.dart';

class SettingsPage extends StatelessWidget {
  final String name;
  final String email;
  const SettingsPage({Key? key, required this.name, required this.email})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          children: [
            SettingsIdCard(name: name, email: email),
            SettingsCountCard(),
            SettingsManyCard(),
            MaterialButton(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.red,
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
              onPressed: () => _dialogBuilder(context),
              child: Text(
                'Cerrar sesión',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('¿Estas seguro que deseas salir de tu cuenta?'),
            actions: <Widget>[
              TextButton(
                  style: TextButton.styleFrom(
                    textStyle: Theme.of(context).textTheme.labelLarge,
                  ),
                  child: const Text('Aceptar'),
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        'login', (Route<dynamic> route) => false);
                    ElegantNotification.success(
                            title: Text("Te extrañaremos"),
                            description: Text(
                                "Vuelve pronto, estamos mejorando la experiencia de viajar y conocer lugares"))
                        .show(context);
                  }),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.labelLarge,
                ),
                child: const Text('Cancelar'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
}
