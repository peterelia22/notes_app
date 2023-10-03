import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/Models/NoteModel.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/cubits/cubit/notes_cubit.dart';
import 'package:notesapp/pages/edit_note_page.dart';
import 'package:notesapp/pages/home_page.dart';

class ItemNote extends StatelessWidget {
  const ItemNote({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNotePage.id);
      },
      child: Container(
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 5),
        decoration: BoxDecoration(
            color: Color(note.color), borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Text(
                  note.tittle,
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              subtitle: Text(
                note.content,
                style: TextStyle(
                  color: Colors.black.withOpacity(.6),
                  fontFamily: 'Poppins',
                ),
              ),
              trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 35,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Text(
                note.date,
                style: const TextStyle(
                    fontFamily: 'Poppins', fontSize: 10, color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
