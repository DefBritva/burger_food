// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:burger_food/core/presentation/widgets/app_navigation_bar.dart';
import 'package:burger_food/features/menu_page/presentation/body.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppNavigationBar(index: 0),
      backgroundColor: Colors.grey.shade900,
      body: MenuBody(),
    );
  }
}
