import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/cutom_text_field.dart';

class CustomModalSheet extends StatelessWidget {
  const CustomModalSheet({super.key,this.isEdit = false});

  final bool isEdit;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            const CustomTextField(
              hint: "Title",
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomTextField(
              hint: "Content",
              maxLines: 6,
            ),
            const SizedBox(
              height: 30,
            ),
            isEdit ? Container() : const CustomButton(),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

