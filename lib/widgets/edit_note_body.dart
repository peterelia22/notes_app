import 'package:flutter/material.dart';
import 'package:notesapp/widgets/Custom_Textfield.dart';
import 'package:notesapp/widgets/custom_appbar.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          CustomAppBar(
            tittle: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 25,
          ),
          const CustomTextField(hintText: 'Tittle'),
          const SizedBox(
            height: 25,
          ),
          const CustomTextField(
            hintText: 'Content',
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
