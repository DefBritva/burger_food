// ignore_for_file: prefer_const_constructors

import 'package:burger_food/core/presentation/routes/app_navigation.dart';
import 'package:burger_food/core/presentation/widgets/app_navigation_bar.dart';
import 'package:flutter/material.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({super.key});

  @override
  Widget build(BuildContext context) {
    final others = <Widget>[
      OtherElement(
        icon: Icons.person,
        title: 'Профиль',
        onTap: () {},
      ),
      OtherElement(
        icon: Icons.home,
        title: 'Мои адреса',
        onTap: () {},
      ),
      OtherElement(
        icon: Icons.list,
        title: 'Мои заказы',
        onTap: () {},
      ),
      OtherElement(
        icon: Icons.card_giftcard_outlined,
        title: 'Акции',
        onTap: () {},
      ),
      OtherElement(icon: Icons.info, title: 'О нас', onTap: () {}),
      OtherElement(
        icon: Icons.drive_eta,
        title: 'Доставка и контакты',
        onTap: () {},
      ),
      OtherElement(
        icon: Icons.attach_money_outlined,
        title: 'Работа у нас',
        onTap: () {},
      ),
      OtherElement(
        icon: Icons.app_registration,
        title: 'Регистрация',
        onTap: () {
          AppNavigation.showAuth(context);
        },
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      bottomNavigationBar: const AppNavigationBar(index: 2),
      body: SafeArea(
          child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 0, left: 5, right: 5),
            child: others[index],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            color: Colors.white.withAlpha(160),
          );
        },
        itemCount: others.length,
      )),
    );
  }
}

class OtherElement extends StatelessWidget {
  const OtherElement({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });
  final IconData icon;
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        leading: Icon(
          icon,
          size: 30,
          color: Colors.white,
        ),
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
