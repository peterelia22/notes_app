import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      child: Center(
        child: Icon(icon),
      ),
      decoration: BoxDecoration(
          color: Color(0xff3c3b3c), borderRadius: BorderRadius.circular(8)),
    );
  }
}
