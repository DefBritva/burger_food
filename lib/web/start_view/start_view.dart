// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:burger_food/core/presentation/widgets/indents.dart';
import 'package:burger_food/core/styles/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    final ScrollController myScrollWorks = ScrollController();
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: RawScrollbar(
        thumbColor: Colors.grey,
        thickness: 13,
        controller: myScrollWorks,
        child: CustomScrollView(controller: myScrollWorks, slivers: [
          SliverAppBar(
            toolbarHeight: 100,
            backgroundColor: Colors.green,
            title: Row(
              children: [
                SizedBox(
                  width: width * 0.1,
                ),
                SvgPicture.asset(
                  'assets/images/1.svg',
                  height: 100,
                  width: 100,
                ),
                Text(
                  'Burger&Burger',
                  style: TextStyles.medium,
                ),
                Indents.fixedSmalltH,
                Column(
                  children: [
                    Text(
                      'Доставка бургеров Красноярск',
                      style: TextStyles.small,
                    ),
                    Indents.fixedSmalltV,
                    Row(
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.white,
                        ),
                        Indents.fixedSmalltH,
                        Text(
                          '8(391)986-43-80',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        Indents.fixedSmalltH,
                        Icon(Icons.message, color: Colors.white),
                      ],
                    )
                  ],
                ),
                SizedBox(width: width * 0.05),
                Text(
                  'Меню',
                  style: TextStyle(color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 20,
                    width: 1,
                    color: Colors.white,
                  ),
                ),
                Indents.fixedMinimalH,
                Text('О нас', style: TextStyle(color: Colors.white)),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 20,
                    width: 1,
                    color: Colors.white,
                  ),
                ),
                Indents.fixedMinimalH,
                Text('Акции ', style: TextStyle(color: Colors.white)),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 20,
                    width: 1,
                    color: Colors.white,
                  ),
                ),
                Indents.fixedMinimalH,
                Text('Доставка', style: TextStyle(color: Colors.white)),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 20,
                    width: 1,
                    color: Colors.white,
                  ),
                ),
                Indents.fixedMinimalH,
                Text('Вакансии', style: TextStyle(color: Colors.white)),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 20,
                    width: 1,
                    color: Colors.white,
                  ),
                ),
                Indents.fixedMinimalH,
                Text('Партнерам', style: TextStyle(color: Colors.white)),
                SizedBox(width: width * 0.1),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Войти',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green, elevation: 0),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text('0 р',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white)),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              size: 30,
                              Icons.shopping_basket_outlined,
                              color: Colors.white,
                            )
                          ],
                        ))
                  ],
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: SizedBox(
                height: 300,
                width: width,
                child: CupertinoScrollbar(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        width: MediaQuery.of(context).size.width * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image:
                                  ExactAssetImage('assets/images/promo.jpg')),
                          color: Colors.white,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 25)),
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.green.shade400,
            toolbarHeight: 100,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/burgerweb.svg',
                      height: 50,
                      width: 50,
                    ),
                    Text(
                      'Бургеры',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(width: 30),
                Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/fries.svg',
                      height: 50,
                      width: 50,
                    ),
                    Text('Закуски', style: TextStyle(color: Colors.white)),
                  ],
                ),
                SizedBox(width: 30),
                Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/soda.svg',
                      height: 50,
                      width: 50,
                    ),
                    Text('Напитки', style: TextStyle(color: Colors.white)),
                  ],
                ),
                SizedBox(width: 30),
                Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/cake.svg',
                      height: 50,
                      width: 50,
                    ),
                    Text('Десерты', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ],
            ),
          ),
          SliverGrid.builder(
              itemCount: 100,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 150,
                      width: 350,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/burger.png'))),
                    ),
                    Column(
                      children: [
                        Text(
                          'БИГТЕЙСТИ',
                          style: TextStyles.medium,
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 150,
                          width: 300,
                          child: Text(
                              style: TextStyle(color: Colors.white),
                              maxLines: 3,
                              'Булочка с кунжутом, бифштекс из говядины рубленый, салат айсберг, соус Чураско, соус бигтейсти, плавленный сыр, помидор'),
                        )
                      ],
                    )
                  ],
                );
              })
        ]),
      ),
    );
  }
}
