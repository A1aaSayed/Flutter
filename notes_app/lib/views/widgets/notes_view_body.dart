import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';

import 'custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      child: Column(
        children: const [
          CustomAppBar(),
          SizedBox(
            height: 20,
          ),
          CustomNoteItem(),
        ],
      ),
    );
  }
}

