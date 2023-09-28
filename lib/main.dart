import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/Models/NoteModel.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/cubits/addnote/add_notes_cubit.dart';
import 'package:notesapp/obesrver/simple_bloc_obesrver.dart';
import 'package:notesapp/pages/edit_note_page.dart';
import 'package:notesapp/pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserve();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kPrimaryBox);

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
