import 'product.dart';
import 'package:flutter/material.dart';
class Clothe extends Product{
  late List<String> size;
  Clothe({required this.size, required super.image, required super.price, required super.id, required super.color });
}