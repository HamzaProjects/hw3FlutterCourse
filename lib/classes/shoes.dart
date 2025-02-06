import 'product.dart';
import 'package:flutter/material.dart';
class Shoes extends Product{
  late List<int> size;
  Shoes({required this.size, required super.image, required super.price, required super.id, required super.color });
}