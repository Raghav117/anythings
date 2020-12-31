import 'package:flutter/widgets.dart';

class Product {
  TextEditingController path = TextEditingController();
  TextEditingController qty = TextEditingController(text: "0");
  int unit;
  final bool camera;

  Product(this.unit, this.camera);
}
