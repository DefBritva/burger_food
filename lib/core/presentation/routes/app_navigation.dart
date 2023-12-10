// ignore_for_file: prefer_const_constructors

import 'package:burger_food/features/auth_page/auth_page.dart';
import 'package:burger_food/features/cart_page/cart_page.dart';
import 'package:burger_food/features/menu_page/menu_page.dart';
import 'package:burger_food/features/other_page/other_page.dart';
import 'package:burger_food/features/promo_page/promo_page.dart';
import 'package:burger_food/web/start_view/start_view.dart';
import 'package:flutter/material.dart';

sealed class AppRoutes {
  static final Map<String, Widget Function(BuildContext)> appRoutes = {
    '/menu': (context) => const MenuPage(),
    '/auth': (context) => const AuthPage(),
    '/cart': (context) => const CartPage(),
    '/other': (context) => const OtherPage(),
    '/promo': (context) => const PromoPage(),
  };

  static const initialRoute = '/menu';
}

class AppNavigation {
  static void showMenu(BuildContext context) {
    Navigator.of(context).pushReplacementNamed('/menu');
  }

  static void showAuth(BuildContext context) {
    Navigator.of(context).pushNamed('/auth');
  }

  static void showCart(BuildContext context) {
    Navigator.of(context).pushReplacementNamed('/cart');
  }

  static void showOther(BuildContext context) {
    Navigator.of(context).pushReplacementNamed('/other');
  }

  static void showPromo(BuildContext context) {
    Navigator.of(context).pushReplacementNamed('/promo');
  }
}

sealed class WebRoutes {
  static final Map<String, Widget Function(BuildContext)> appRoutes = {
    '/start': (context) => StartView()
  };

  static const initialRoute = '/start';
}
