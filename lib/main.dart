// ignore_for_file: prefer_const_constructors

import 'package:burger_food/core/bloc/burger_bloc.dart';
import 'package:burger_food/core/domain/services/auth_service.dart';
import 'package:burger_food/core/presentation/routes/app_navigation.dart';
import 'package:burger_food/core/utils/scroll.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(BurgerApp());
}

class BurgerApp extends StatelessWidget {
  const BurgerApp({
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

    return RepositoryProvider(
      create: (context) => AuthService(),
      child: Main(
        initialRoute: initialRoute,
        routes: routes,
      ),
    );
  }
}

class Main extends StatelessWidget {
  const Main({
    super.key,
    required this.initialRoute,
    required this.routes,
  });

  final String initialRoute;
  final Map<String, Widget Function(BuildContext p1)> routes;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BurgerBloc(context.read<AuthService>()),
      child: MaterialApp(
        scrollBehavior: MyCustomScrollBehavior(),
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.grey.shade900,
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    shape: const StadiumBorder()))),
        debugShowCheckedModeBanner: false,
        initialRoute: initialRoute,
        routes: routes,
      ),
    );
  }
}
