import 'package:burger_food/core/presentation/routes/app_navigation.dart';
import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      backgroundColor: Colors.green,
      currentIndex: index,
      items: [
        BottomNavigationBarItem(
          label: 'Menu',
          icon: IconButton(
            icon: Icon(Icons.menu_book_rounded),
            onPressed: () {
              AppNavigation.showMenu(context);
            },
          ),
        ),
        BottomNavigationBarItem(
          label: 'Promo',
          icon: IconButton(
            icon: Icon(Icons.app_registration),
            onPressed: () {
              AppNavigation.showPromo(context);
            },
          ),
        ),
        BottomNavigationBarItem(
          label: 'Other',
          icon: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              AppNavigation.showOther(context);
            },
          ),
        ),
        BottomNavigationBarItem(
          label: 'Cart',
          icon: IconButton(
            icon: Icon(Icons.shopping_basket_rounded),
            onPressed: () {
              AppNavigation.showCart(context);
            },
          ),
        ),
      ],
    );
  }
}
