import 'package:flutter/material.dart';
import 'package:notesapp/widgets/Notes_ListView.dart';
import 'package:notesapp/widgets/custom_appbar.dart';
import 'package:notesapp/widgets/item_note.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          CustomAppBar(
            tittle: 'Notes',
            icon: Icons.add,
          ),
          Expanded(
            child: NotesListView(),
          )
        ],
      ),
    );
  }
}
