import 'package:flutter/material.dart';
import 'package:notesapp/widgets/edit_note_body.dart';

class EditNotePage extends StatelessWidget {
  const EditNotePage({super.key});
  static String id = 'Edit Page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteBody(),
    );
  }
}
