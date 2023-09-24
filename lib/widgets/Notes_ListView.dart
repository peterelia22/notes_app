import 'package:flutter/material.dart';
import 'package:notesapp/widgets/item_note.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: ItemNote(),
      );
    });
  }
}
