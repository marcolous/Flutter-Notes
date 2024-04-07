import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        children: const [
          CustomAppBar(
            icon: Icon(
              Icons.check_rounded,
            ),
            title: 'Edit Note',
          ),
          SizedBox(height: 32),
          CustomTextField(
            hint: 'Title',
          ),
          SizedBox(height: 32),
          CustomTextField(
            hint: 'Discription',
            maxLines: 7,
          ),
          SizedBox(height: 32),
          //CustomBotton(),
        ],
      ),
    );
  }
}
