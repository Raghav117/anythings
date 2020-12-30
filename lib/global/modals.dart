import 'package:flutter/widgets.dart';

class Product {
  String path;
  TextEditingController qty = TextEditingController(text: "0");
  int unit;
  final bool camera;

  Product(this.path, this.unit, this.camera);
}
