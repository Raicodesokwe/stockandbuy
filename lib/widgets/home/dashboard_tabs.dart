import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardTabs extends StatelessWidget {
  final String label;
  final String amount;
  final String percentage;
  final IconData icon;
  final IconData mainicon;
  final Color color;
  const DashboardTabs({
    Key? key,
    required this.label,
    required this.amount,
    required this.percentage,
    required this.icon,
    required this.color,
    required this.mainicon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 50,
                  child: Icon(
                    // FontAwesomeIcons.book,
                    mainicon,
                    color: Colors.white,
                  ),
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black)),
              SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Text('CoGS\ninsights'),
                  Text(label),
                  Text(
                    // '\$2250',
                    amount,
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.w300),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  // '20%',
                  percentage,
                  style: TextStyle(fontSize: 10),
                ),
                Icon(
                  // Icons.arrow_upward,
                  icon,
                  size: 15,
                )
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 2)),
          )
        ],
      ),
      decoration: BoxDecoration(
          // color: Color.fromARGB(255, 68, 202, 255),
          color: color,
          borderRadius: BorderRadius.circular(
            15,
          ),
          border: Border.all(width: 2)),
    );
  }
}
