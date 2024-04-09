import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'package:notes_app/views/widgets/edit_note_color_list_view.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        children: [
          CustomAppBar(
            icon: IconButton(
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = subTitle ?? widget.note.subTitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
              icon: const Icon(Icons.check_rounded),
            ),
            title: 'Edit Note',
          ),
          const SizedBox(height: 32),
          CustomTextField(
            initialValue: widget.note.title,
            onChanged: (value) {
              title = value;
            },
            //hint: widget.note.title,
          ),
          const SizedBox(height: 32),
          CustomTextField(
            initialValue: widget.note.subTitle,
            onChanged: (value) {
              subTitle = value;
            },
            //hint: widget.note.subTitle,
            maxLines: 7,
          ),
          const SizedBox(height: 32),
          EditNoteColorList(
            note: widget.note,
          ),
          const SizedBox(height: 32),
          //CustomBotton(),
        ],
      ),
    );
  }
}
