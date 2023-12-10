// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: Colors.white,
        ),
        elevation: 0,
        backgroundColor: Colors.grey.shade900,
        title: Text(
          'Регистрация',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: FormWidget(
                  hint: 'Имя',
                )),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                    child: FormWidget(
                  hint: 'Фамилия',
                )),
              ],
            ),
            SizedBox(height: 15),
            FormWidget(
              hint: 'E-mail',
            ),
            SizedBox(height: 15),
            FormWidget(
              hint: 'Номер телефона',
            ),
            SizedBox(height: 15),
            PasswordWidget(
              hint: 'Пароль',
            ),
            Expanded(child: SizedBox()),
            SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Создать аккаунт',
                      style: TextStyle(fontSize: 15),
                    ))),
          ],
        ),
      )),
    );
  }
}

class FormWidget extends StatelessWidget {
  const FormWidget(
      {super.key, required this.hint, this.obsure, this.decoration});

  final String hint;
  final bool? obsure;
  final InputDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obsure ?? false,
      style: TextStyle(color: Colors.white),
      cursorColor: Colors.white54,
      expands: false,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.white),
        hintText: hint,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white54),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white54),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}

class PasswordWidget extends StatefulWidget {
  const PasswordWidget({super.key, required this.hint});

  final String hint;

  @override
  State<PasswordWidget> createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends State<PasswordWidget> {
  bool obsure = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obsure,
      style: TextStyle(color: Colors.white),
      cursorColor: Colors.white54,
      expands: false,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              obsure = !obsure;
            });
          },
          icon: obsure
              ? Icon(
                  Icons.visibility,
                  color: Colors.white54,
                )
              : Icon(
                  Icons.visibility_off,
                  color: Colors.white54,
                ),
        ),
        hintStyle: TextStyle(color: Colors.white),
        hintText: widget.hint,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white54),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white54),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
