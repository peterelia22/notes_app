import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_appbar.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 20,
        ),
        CustomAppBar()
      ],
    );
  }
}
