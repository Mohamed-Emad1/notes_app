import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/cutom_text_field.dart';
import 'package:notes_app/widgets/edits_notes_color.dart';

class EditNotesViewBody extends StatefulWidget {
  const EditNotesViewBody({super.key, required this.note});

  final NotesModel note;

  @override
  State<EditNotesViewBody> createState() => _EditNotesViewBodyState();
}

class _EditNotesViewBodyState extends State<EditNotesViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 55,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.content = content ?? widget.note.content;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                content: Text(
                  "Note Updated",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                backgroundColor: Colors.green,
              )
              );
              
            },
            title: "Edit Note",
            icon: Icons.check,
          ),
          const SizedBox(
            height: 55,
          ),
          CustomTextField(
            hint: widget.note.title + " (add new title)",
            onChanged: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: widget.note.title + " (add new content)",
            onChanged: (value) {
              content = value;
            },
            maxLines: 5,
          ),
          EditColorsListView(
            note: widget.note,
          )
        ],
      ),
    );
  }
}
