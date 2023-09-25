import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          //  border: BuildBorder(),
          focusedBorder: BuildBorder(kPrimaryColor),
          enabledBorder: BuildBorder()),
    );
  }

  OutlineInputBorder BuildBorder([Color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Color ?? Colors.white));
  }
}
