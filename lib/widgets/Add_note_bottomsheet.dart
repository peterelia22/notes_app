import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notesapp/cubits/addnote/add_notes_cubit.dart';
import 'package:notesapp/widgets/AddNoteForm.dart';
import 'package:notesapp/widgets/Custom_Button.dart';
import 'package:notesapp/widgets/Custom_Textfield.dart';
import 'package:notesapp/widgets/snackBar.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {
          if (state is AddNotesFailure) {
            return snackBar(
                context, 'there was an error please try again later');
          }
          if (state is AddNotesSuccess) {
            snackBar(context, 'success   🤙');
            return Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
              absorbing: state is AddNotesLoading ? true : false,
              child: Padding(
                padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: SingleChildScrollView(child: AddNoteForm()),
              ));
        },
      ),
    );
  }
}
