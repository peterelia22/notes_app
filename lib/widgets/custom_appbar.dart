import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_iconbar.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Notes',
          style: TextStyle(fontFamily: 'Quicksand', fontSize: 28),
        ),
        CustomIcon()
      ],
    );
  }
}
