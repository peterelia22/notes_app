import 'package:flutter/material.dart';
import 'package:notesapp/widgets/Custom_Textfield.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 25,
        ),
        CustomTextField()
      ],
    );
  }
}
