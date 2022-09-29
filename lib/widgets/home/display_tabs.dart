import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DisplayTab extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  const DisplayTab({
    Key? key,
    required this.size,
    required this.icon,
    required this.label,
    required this.color,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: size.width * 0.4,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 30,
              width: 30,
              child: Icon(
                icon,
                // FontAwesomeIcons.clipboard,
                size: 15,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              )),
          SizedBox(
            width: 5,
          ),
          Text(
            label,
            // 'Inventory \nmanagement',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: color,
          // color: Color.fromARGB(255, 31, 87, 33),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
