import 'package:flutter/material.dart';

class AppStyle {
  AppStyle._();

  static const normal12 =
      TextStyle(fontSize: 12, fontWeight: FontWeight.normal);
  static const normal14 =
      TextStyle(fontSize: 14, fontWeight: FontWeight.normal);
  static const normal16 =
      TextStyle(fontSize: 16, fontWeight: FontWeight.normal);
  static const bold12 = TextStyle(fontSize: 12, fontWeight: FontWeight.bold);
  static const bold14 = TextStyle(fontSize: 14, fontWeight: FontWeight.bold);
  static const bold16 = TextStyle(fontSize: 15, fontWeight: FontWeight.bold);

  static const bold12red =
      TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.red);
  static const bold14red =
      TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.red);
  static const bold16red =
      TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.red);

  static const italic10 = TextStyle(fontSize: 10, fontStyle: FontStyle.italic);
  static const italic12 = TextStyle(fontSize: 12, fontStyle: FontStyle.italic);
  static const italic14 = TextStyle(fontSize: 14, fontStyle: FontStyle.italic);
  static const italic16 = TextStyle(fontSize: 16, fontStyle: FontStyle.italic);
}
