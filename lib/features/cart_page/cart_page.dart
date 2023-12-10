// ignore_for_file: prefer_const_constructors

import 'package:burger_food/core/presentation/widgets/app_navigation_bar.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: Text(
          'Корзина',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey.shade900,
      ),
      bottomNavigationBar: const AppNavigationBar(index: 3),
      body: SafeArea(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 150,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/burger.png'))),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => Divider(
                    color: Colors.white,
                  ),
              itemCount: 10)),
    );
  }
}
