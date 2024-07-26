import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/cutom_text_field.dart';

class CustomModalSheet extends StatelessWidget {
  const CustomModalSheet({super.key, this.isEdit = false});

  final bool isEdit;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: SingleChildScrollView(
        child: AddNoteForm(isEdit: isEdit),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
    required this.isEdit,
  });

  final bool isEdit;

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
    String? title, subTitle;
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: "Title",
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hint: "Content",
            maxLines: 6,
          ),
          const SizedBox(
            height: 30,
          ),
          widget.isEdit
              ? Container()
              : CustomButton(onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  }
                  else{
                    autoValidateMode = AutovalidateMode.always;
                  }
                }),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
