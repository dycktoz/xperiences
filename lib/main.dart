import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xperiences/providers/ui_provider.dart';
import 'package:xperiences/routes/routes.dart';
import 'package:xperiences/services/localStorage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LocalStorage localStorage = LocalStorage();
    localStorage.putUserNPasword();
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => UiProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Xperiences App',
        initialRoute: 'login',
        routes: appRoutes,
      ),
    );
  }
}
