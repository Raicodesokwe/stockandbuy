import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stockandbuy/pages/graph_page.dart';

import 'display_tabs.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key, required this.size, required this.scaleAnimation})
      : super(key: key);

  final Size size;
  final Animation<double> scaleAnimation;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.transparent,
      expandedHeight: size.height * 0.42,
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          children: [
            SizedBox(
              height: size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    child: Center(
                      child: Icon(Icons.shopping_bag),
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Shopify store',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Colors.white54,
                  ),
                  Spacer(),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Icon(
                        Icons.notifications,
                        color: Colors.white54,
                      ),
                      Positioned(
                          top: -5,
                          right: -5,
                          child: Container(
                            height: 15,
                            width: 15,
                            child: Center(
                              child: Text(
                                '2',
                                style: TextStyle(fontSize: 8),
                              ),
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(width: 2),
                                shape: BoxShape.circle,
                                color: Colors.white),
                          ))
                    ],
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Icon(
                    Icons.settings,
                    color: Colors.white54,
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Text(
              'Sales',
              style: TextStyle(color: Colors.white54, fontSize: 25),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '\$',
                  style: TextStyle(fontSize: 25, color: Colors.white54),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '65,789',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 35),
                ),
                Text(
                  '.00',
                  style: TextStyle(fontSize: 25, color: Colors.white54),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => GraphPage()));
                    },
                    child: ScaleTransition(
                      scale: scaleAnimation,
                      child: DisplayTab(
                          size: size,
                          icon: FontAwesomeIcons.clipboard,
                          label: 'Inventory \nmanagement',
                          color: Color.fromARGB(255, 31, 87, 33)),
                    ),
                  ),
                  Spacer(),
                  ScaleTransition(
                    scale: scaleAnimation,
                    child: DisplayTab(
                        size: size,
                        icon: FontAwesomeIcons.chartLine,
                        label: 'Order \ninsights',
                        color: Colors.white30),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
