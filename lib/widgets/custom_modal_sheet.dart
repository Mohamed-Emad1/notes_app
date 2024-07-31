import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:notes_app/widgets/add_form.dart';

class CustomModalSheet extends StatelessWidget {
  const CustomModalSheet({super.key, this.isEdit = false});

  final bool isEdit;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if(state is AddNoteSuccess){
              Navigator.pop(context);
            }
            if (state is AddNoteFailure) {
              print("failed ${state.error}");
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading ? true : false,
              child: AddNoteForm(isEdit: isEdit),);
          },
        ),
      ),
    );
  }
}
