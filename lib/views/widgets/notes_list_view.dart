import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return  const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: NoteItem(),
          );
        },
      ),
    );
  }
}