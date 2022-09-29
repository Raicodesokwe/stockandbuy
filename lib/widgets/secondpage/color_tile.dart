import 'package:flutter/material.dart';

class ColorTile extends StatelessWidget {
  final Color color;
  final String label;
  const ColorTile({Key? key, required this.color, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
              color: color
              // color: const Color(0xFF5113AA)

              ,
              shape: BoxShape.circle),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          // 'Items with cost',
          label,
          style: TextStyle(fontSize: 14, color: Colors.white54),
        )
      ],
    );
  }
}
