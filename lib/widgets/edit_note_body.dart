import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_appbar.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          CustomAppBar(
            tittle: 'Edit Note',
            icon: Icons.check,
          )
        ],
      ),
    );
  }
}
