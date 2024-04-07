import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AppNoteBottonSheet extends StatelessWidget {
  const AppNoteBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: ListView(
          shrinkWrap: true,
          children: const [
            SizedBox(height: 32),
            CustomTextField(hint: 'Title'),
            SizedBox(height: 32),
            CustomTextField(hint: 'Description', maxLines: 7),
            SizedBox(height: 32),
            CustomBotton(),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
