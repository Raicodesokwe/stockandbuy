import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stockandbuy/model/inventory_manager.dart';
import 'package:stockandbuy/widgets/home/dashboard_tabs.dart';
import 'package:stockandbuy/widgets/home/display_tabs.dart';

import '../widgets/home/home_app_bar.dart';
import '../widgets/home/inventory_numbers.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController? tabController;
  late AnimationController controller;
  late Animation<double> fadeAnimation;
  late AnimationController scaleController;
  late Animation<double> scaleAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 6, vsync: this);
    // tabTwoController = TabController(length: 2, vsync: this);

    tabController!.addListener(() {
      setState(() {});
    });
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 800));
    fadeAnimation = Tween(begin: 0.0, end: 1.0).animate(controller);
    scaleController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 450),
    );
    scaleAnimation =
        CurvedAnimation(parent: scaleController, curve: Curves.elasticInOut);
    Future.delayed(Duration(milliseconds: 600), () {
      controller.forward().then((value) => scaleController.forward());
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: FadeTransition(
            opacity: fadeAnimation,
            child: CustomScrollView(
              slivers: [
                HomeAppBar(
                  size: size,
                  scaleAnimation: scaleAnimation,
                ),
                SliverToBoxAdapter(
                  child: Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Icon(
                              FontAwesomeIcons.windowMinimize,
                              color: Colors.black,
                              size: 34,
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.015,
                          ),
                          Text(
                            'Dashboard',
                            style: TextStyle(fontSize: 25),
                          ),
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          Row(
                            children: [
                              DashboardTabs(
                                  mainicon: FontAwesomeIcons.book,
                                  label: 'CoGS\ninsights',
                                  amount: '\$2250',
                                  percentage: '20%',
                                  icon: Icons.arrow_upward,
                                  color: Color.fromARGB(255, 68, 202, 255)),
                              // Color.fromARGB(255, 186, 123, 228)
                              Spacer(),
                              Transform.translate(
                                offset: Offset(0.0, 30),
                                child: DashboardTabs(
                                    mainicon: FontAwesomeIcons.truck,
                                    label: 'Units\nsold',
                                    amount: '156',
                                    percentage: '5%',
                                    icon: Icons.arrow_upward,
                                    color: Color.fromARGB(255, 186, 123, 228)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          Row(
                            children: [
                              DashboardTabs(
                                  mainicon: FontAwesomeIcons.productHunt,
                                  label: 'Products\nremaining',
                                  amount: '567',
                                  percentage: '7%',
                                  icon: Icons.arrow_downward,
                                  color: Color.fromARGB(255, 240, 243, 88)),
                              Spacer(),
                              Transform.translate(
                                offset: Offset(0.0, 30),
                                child: DashboardTabs(
                                    mainicon: FontAwesomeIcons.person,
                                    label: 'Monthly\ncustomers',
                                    amount: '7865',
                                    percentage: '3%',
                                    icon: Icons.arrow_downward,
                                    color: Color.fromARGB(255, 97, 160, 99)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.07,
                          ),
                          DefaultTabController(
                              length: 6,
                              child: TabBar(
                                isScrollable: true,
                                controller: tabController,
                                labelPadding: EdgeInsets.zero,
                                indicatorColor: Colors.black,
                                tabs: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Chip(
                                      side: BorderSide(
                                          color: Colors.black, width: 2),
                                      labelPadding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      label: Text(
                                        'Inventory management',
                                        style: TextStyle(
                                            color: tabController!.index == 0
                                                ? Colors.white
                                                : Colors.black),
                                      ),
                                      backgroundColor: tabController!.index == 0
                                          ? Colors.black
                                          : Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Chip(
                                      side: BorderSide(
                                          color: Colors.black, width: 2),
                                      labelPadding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      label: Text(
                                        'Stock control',
                                        style: TextStyle(
                                            color: tabController!.index == 1
                                                ? Colors.white
                                                : Colors.black),
                                      ),
                                      backgroundColor: tabController!.index == 1
                                          ? Colors.black
                                          : Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Chip(
                                      side: BorderSide(
                                          color: Colors.black, width: 2),
                                      labelPadding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      label: Text(
                                        'Order management',
                                        style: TextStyle(
                                            color: tabController!.index == 2
                                                ? Colors.white
                                                : Colors.black),
                                      ),
                                      backgroundColor: tabController!.index == 2
                                          ? Colors.black
                                          : Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Chip(
                                      side: BorderSide(
                                          color: Colors.black, width: 2),
                                      labelPadding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      label: Text(
                                        'Manufacturing',
                                        style: TextStyle(
                                            color: tabController!.index == 3
                                                ? Colors.white
                                                : Colors.black),
                                      ),
                                      backgroundColor: tabController!.index == 3
                                          ? Colors.black
                                          : Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Chip(
                                      side: BorderSide(
                                          color: Colors.black, width: 2),
                                      labelPadding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      label: Text(
                                        'Inventory planning',
                                        style: TextStyle(
                                            color: tabController!.index == 4
                                                ? Colors.white
                                                : Colors.black),
                                      ),
                                      backgroundColor: tabController!.index == 4
                                          ? Colors.black
                                          : Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Chip(
                                      side: BorderSide(
                                          color: Colors.black, width: 2),
                                      labelPadding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      label: Text(
                                        'Reporting',
                                        style: TextStyle(
                                            color: tabController!.index == 5
                                                ? Colors.white
                                                : Colors.black),
                                      ),
                                      backgroundColor: tabController!.index == 5
                                          ? Colors.black
                                          : Colors.white,
                                    ),
                                  ),
                                ],
                              )),
                          SizedBox(
                            height: size.height * 0.015,
                          ),
                          Text(
                            'Let\'s check out some inventory numbers shall we:',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: size.height * 0.015,
                          ),
                          InventoryNumbers(),
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
