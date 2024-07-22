import 'package:flutter/material.dart';
import 'package:notes_app/widgets/cutom_text_field.dart';

class CustomModalSheet extends StatelessWidget {
  const CustomModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            hint: "Title",
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextField(
            hint: "Content",
            maxLines: 7,
          ),
        ],
      ),
    );
  }
}
