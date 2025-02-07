import 'package:flutter/material.dart';
class AppCartIcon extends StatelessWidget {
  double? left = 0;
  double? top = 0;
  double? right = 0;
  double? bottom = 0;
  AppCartIcon({this.left, this.right, this.bottom, this.top});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Container(
        child: Center(child: Icon(Icons.shopping_bag_rounded, color: Colors.white, size: 18,)),
        width: 33,
        height: 33,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.red.shade900,
        ),


      ),
      left: left,
      top: top,
      right: right,
      bottom: bottom,

    );
  }
}
