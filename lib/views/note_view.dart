import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_note_botton_sheet.dart';
import 'package:notes_app/views/widgets/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const AppNoteBottonSheet();
              });
        },
        backgroundColor: Colors.grey[900],
        child: const Icon(Icons.add),
      ),
      body: const NoteViewBody(),
    );
  }
}
