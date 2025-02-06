import 'package:flutter/material.dart';
class AppNewIcon extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red.shade900.withOpacity(0.8),
        borderRadius: BorderRadius.circular(12),
      ),
      alignment: Alignment.center,
      height: 24,
      width: 40,
      child: Text("New", style: TextStyle(color: Colors.white, fontSize: 12,),),
    );
  }
}
