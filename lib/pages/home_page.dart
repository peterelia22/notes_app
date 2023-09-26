import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/widgets/Add_note_bottomsheet.dart';
import 'package:notesapp/widgets/notes_body.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});
  static String id = 'Home Page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              context: context,
              builder: (context) {
                return const AddNoteSheet();
              });
        },
        foregroundColor: kPrimaryColor,
        backgroundColor: Colors.black,
        child: const Icon(Icons.add),
      ),
      body: const NotesBody(),
    );
  }
}
