import 'package:catalog/core/store.dart';
import 'package:catalog/screens/cart_page.dart';
import 'package:catalog/screens/login_page.dart';
import 'package:catalog/screens/singup_page.dart';
import 'package:catalog/utils/routes.dart';
import 'package:catalog/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'screens/home_page.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.singupRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.singupRoute: (context) => SignUpPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
