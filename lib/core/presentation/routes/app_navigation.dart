import 'package:burger_food/features/login_page/login_page.dart';
import 'package:burger_food/features/register_page/register_page.dart';
import 'package:burger_food/features/cart_page/cart_page.dart';
import 'package:burger_food/features/menu_page/menu_page.dart';
import 'package:burger_food/features/other_page/other_page.dart';
import 'package:burger_food/features/promo_page/promo_page.dart';
import 'package:burger_food/web/start_view/start_view.dart';
import 'package:flutter/material.dart';

sealed class AppRoutes {
  static final Map<String, Widget Function(BuildContext)> appRoutes = {
    '/menu': (context) => const MenuPage(),
    '/menu/login/auth': (context) => const RegisterPage(),
    '/cart': (context) => const CartPage(),
    '/other': (context) => const OtherPage(),
    '/promo': (context) => const PromoPage(),
    '/menu/login': (context) => const LoginPage()
  };

  static const initialRoute = '/menu';
}

class AppNavigation {
  static void showMenu(BuildContext context) {
    Navigator.of(context).pushReplacementNamed('/menu');
  }

  static void showAuth(BuildContext context) {
    Navigator.of(context).pushReplacementNamed('/menu/login/auth');
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

  static void login(BuildContext context) {
    Navigator.of(context).pushNamed('/menu/login');
  }
}

sealed class WebRoutes {
  static final Map<String, Widget Function(BuildContext)> appRoutes = {
    '/start': (context) => const StartView()
  };

  static const initialRoute = '/start';
}
