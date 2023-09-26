import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_iconbar.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({super.key, required this.tittle, required this.icon});
  final String tittle;
  @override
  final IconData icon;

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          tittle,
          style: TextStyle(fontFamily: 'Quicksand', fontSize: 28),
        ),
        CustomIcon(
          icon: icon,
        )
      ],
    );
  }
}
