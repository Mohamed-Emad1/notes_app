import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 60,
        ),
        CustomAppBar(),
      ],
    );
  }
}
