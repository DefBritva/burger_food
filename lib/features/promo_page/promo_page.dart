import 'package:burger_food/core/presentation/widgets/app_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PromoPage extends StatelessWidget {
  const PromoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset('assets/images/gift.svg'),
        ),
        title: const Text('Акции'),
      ),
      backgroundColor: Colors.grey.shade900,
      bottomNavigationBar: const AppNavigationBar(index: 1),
      body: SafeArea(
          child: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
            ),
          );
        },
      )),
    );
  }
}
