import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

class MenuAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MenuAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            height: 75,
            width: 20,
            'assets/images/1.svg',
          ),
          Text(
            'Бургер и точка',
            style: TextStyle(fontSize: 15),
          )
        ],
      ),
      backgroundColor: Colors.green,
    );
  }

  static final _appBar = AppBar();
  @override
  Size get preferredSize => _appBar.preferredSize;
}
