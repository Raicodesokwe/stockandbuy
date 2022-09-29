import 'package:flutter/material.dart';

class PieData {
  static List<Data> data = [
    Data(name: 'Purple', percent: 75, color: const Color(0xFF5113AA)),
    Data(name: 'red', percent: 25, color: Colors.redAccent[100]!),
  ];
  static List<Data> datatwo = [
    Data(name: 'Purple', percent: 60, color: Colors.yellow),
    Data(name: 'red', percent: 40, color: Colors.green),
  ];
}

class Data {
  final String name;
  final double percent;
  final Color color;

  Data({required this.name, required this.percent, required this.color});
}
