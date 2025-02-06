import 'package:flutter/material.dart';
import 'dart:ui';

abstract class Product{
  late double price;
  late String image;
  late int id;
  late String color;
  Product({required this.image, required this.price, required this.id, required this.color});
}