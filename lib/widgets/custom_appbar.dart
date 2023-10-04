import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_iconbar.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar(
      {super.key, required this.tittle, required this.icon, this.onPressed});
  final String tittle;
  @override
  final IconData icon;
  final void Function()? onPressed;

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          tittle,
          style: TextStyle(fontFamily: 'Quicksand', fontSize: 28),
        ),
        CustomIcon(
          onPressed: onPressed,
          icon: icon,
        )
      ],
    );
  }
}
