import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notesapp/cubits/addnote/add_notes_cubit.dart';
import 'package:notesapp/widgets/Colors_list.dart';
import 'package:notesapp/widgets/Custom_Button.dart';
import 'package:notesapp/widgets/Custom_Textfield.dart';

import '../Models/NoteModel.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? tittle, subTittle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          CustomTextField(
            onsaved: (value) {
              tittle = value;
            },
            hintText: 'Tittle',
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextField(
            onsaved: (value) {
              subTittle = value;
            },
            hintText: 'Content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 40,
          ),
          ColorsListView(),
          SizedBox(
            height: 10,
          ),
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNotesLoading ? true : false,
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formatNoteModel(context);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          )
        ],
      ),
    );
  }

  void formatNoteModel(BuildContext context) {
    formkey.currentState!.save();
    var cuurentDate = DateTime.now();
    var formatCuurentDate = DateFormat('yyyy-MM-dd').format(cuurentDate);
    var noteModel = NoteModel(
        tittle: tittle!,
        content: subTittle!,
        date: formatCuurentDate,
        color: Colors.blue.value);
    BlocProvider.of<AddNotesCubit>(context).AddNote(noteModel);
  }
}
