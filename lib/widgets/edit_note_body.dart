import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/Models/NoteModel.dart';
import 'package:notesapp/cubits/cubit/notes_cubit.dart';
import 'package:notesapp/widgets/Custom_Textfield.dart';
import 'package:notesapp/widgets/custom_appbar.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

String? tittle, content;

class _EditNoteBodyState extends State<EditNoteBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.tittle = tittle ?? widget.note.tittle;
              widget.note.content = tittle ?? widget.note.content;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            tittle: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextField(
              onchanged: (value) {
                tittle = value;
              },
              hintText: widget.note.tittle),
          const SizedBox(
            height: 25,
          ),
          CustomTextField(
            onchanged: (value) {
              content = value;
            },
            hintText: widget.note.content,
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
