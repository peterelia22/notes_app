import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon, this.onPressed});
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: IconButton(
          onPressed: onPressed,
          icon: Center(
            child: Icon(
              icon,
              size: 28,
            ),
          ),
        ),
      ),
      height: 46,
      width: 46,
      decoration: BoxDecoration(
          color: Color(0xff3c3b3c), borderRadius: BorderRadius.circular(8)),
    );
  }
}
