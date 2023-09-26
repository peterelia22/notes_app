import 'package:flutter/material.dart';
import 'package:notesapp/pages/edit_note_page.dart';
import 'package:notesapp/pages/home_page.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: NotesPage.id,
      routes: {
        NotesPage.id: (context) => NotesPage(),
        EditNotePage.id: (context) => EditNotePage()
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: const NotesPage(),
    );
  }
}
