import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_modal_sheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ),
              context: context,
              builder: ((context) {
                return const CustomModalSheet();
              }),);
        },
        child: const Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}

