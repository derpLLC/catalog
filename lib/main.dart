import 'package:catalog/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      initialRoute: 'login_page',
      routes: {
        'home_page': (context)  => HomePage(),
        'login_page': (context)=> LoginPage(),
      },
    );
  }
}
