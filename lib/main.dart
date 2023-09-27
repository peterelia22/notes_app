import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/Models/NoteModel.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/pages/edit_note_page.dart';
import 'package:notesapp/pages/home_page.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kPrimaryBox);
  Hive.registerAdapter(NoteModelAdapter());
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
