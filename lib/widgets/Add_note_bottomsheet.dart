import 'package:flutter/material.dart';
import 'package:notesapp/widgets/Custom_Button.dart';
import 'package:notesapp/widgets/Custom_Textfield.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: const Column(
        children: [
          SizedBox(
            height: 25,
          ),
          CustomTextField(
            hintText: 'Tittle',
          ),
          SizedBox(
            height: 25,
          ),
          CustomTextField(
            hintText: 'Content',
            maxLines: 5,
          ),
          SizedBox(
            height: 40,
          ),
          CustomButton()
        ],
      ),
    );
  }
}
