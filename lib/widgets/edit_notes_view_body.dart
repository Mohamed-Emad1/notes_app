import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_modal_sheet.dart';
import 'package:notes_app/widgets/cutom_text_field.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return const Column(
      children: [
        SizedBox(
          height: 55,
        ),
        CustomAppBar(
          title: "Edit Note",
          icon: Icons.check,
        ),
        CustomModalSheet(isEdit: true,),
      ],
    );
  }
}
