// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:burger_food/core/presentation/routes/app_navigation.dart';
import 'package:burger_food/core/styles/text_styles.dart';
import 'package:burger_food/features/register_page/register_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Вход',
          style: TStyles.defaultStyle,
        ),
        centerTitle: true,
        leading: BackButton(color: Colors.white),
        backgroundColor: Colors.grey.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FormWidget(hint: 'E-mail'),
            SizedBox(
              height: 15,
            ),
            PasswordWidget(hint: 'Пароль'),
            SizedBox(
              height: 15,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Войти',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ))),
            SizedBox(
              height: 15,
            ),
            TextButton(
                onPressed: () {
                  AppNavigation.showAuth(context);
                },
                child: Text(
                  'Регистрация',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
