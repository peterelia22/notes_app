import 'package:flutter/material.dart';
import 'package:notesapp/widgets/notes_body.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        foregroundColor: Colors.red,
        backgroundColor: Colors.black,
        child: Icon(Icons.add),
      ),
      body: NotesBody(),
    );
  }
}
