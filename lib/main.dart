// ignore_for_file: prefer_const_constructors

import 'package:burger_food/core/presentation/routes/app_navigation.dart';
import 'package:burger_food/core/utils/scroll.dart';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(BurgerApp());
}

class BurgerApp extends StatelessWidget {
  const BurgerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Main();
  }
}

class Main extends StatelessWidget {
  const Main({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final String initialRoute;
    final Map<String, Widget Function(BuildContext)> routes;
    if (defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS) {
      initialRoute = AppRoutes.initialRoute;
      routes = AppRoutes.appRoutes;
    } else {
      initialRoute = WebRoutes.initialRoute;
      routes = WebRoutes.appRoutes;
    }

    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey, shape: const StadiumBorder()))),
      debugShowCheckedModeBanner: false,
      initialRoute: initialRoute,
      routes: routes,
    );
  }
}
