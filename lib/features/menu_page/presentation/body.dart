import 'package:burger_food/core/styles/text_style.dart';
import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

class MenuBody extends StatelessWidget {
  const MenuBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SizedBox(
            height: 150,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: ExactAssetImage('assets/images/promo.jpg')),
                    color: Colors.white,
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox();
              },
              itemCount: 10,
            ),
          ),
        )),
        SliverAppBar(
          pinned: true,
          actions: [
            SizedBox(
                width: MediaQuery.of(context).size.width * 1,
                height: 100,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Бургеры',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: ((context, index) => SizedBox()),
                    itemCount: 10)),
          ],
          backgroundColor: Colors.grey.shade900,
        ),
        SliverList.separated(
          itemBuilder: (context, index) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: Stack(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/burger.png'))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Бигтейсти',
                            style: TextStyles.medium,
                          ),
                          SizedBox(height: 10),
                          ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                '250 руб',
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Состав',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        )),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              height: 1,
              color: Colors.white,
            );
          },
        )
      ],
    ));
  }
}

//  Stack(
//       children: [
//         Align(
//           alignment: Alignment.topCenter,
//           child: SizedBox(
//             height: 150,
//             child: ListView.separated(
//               itemCount: 10,
//               separatorBuilder: (context, index) {
//                 return SizedBox(width: 0);
//               },
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (context, index) {
//                 return Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.all(Radius.circular(25)),
//                     color: Colors.white,
//                   ),
//                   margin: EdgeInsets.symmetric(horizontal: 10),
//                   width: MediaQuery.of(context).size.width * 0.7,
//                   child: Image.asset(
//                     'assets/images/prom1.png',
//                   ),
//                 );
//               },
//             ),
//           ),
//         )
//       ],
//     )
