import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      child: Center(
        child: Icon(Icons.search),
      ),
      decoration: BoxDecoration(
          color: Color(0xff3c3b3c), borderRadius: BorderRadius.circular(8)),
    );
  }
}
