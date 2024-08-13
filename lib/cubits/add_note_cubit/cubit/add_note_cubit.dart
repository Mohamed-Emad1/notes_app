import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/notes_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color color = const Color(0xffCF5C36);
  addNote(NotesModel note) async {
    note.color = color.value;
    // debugPrint("heloo !!!!!!!!!!!!!!!!!" + color.value.toString());
    emit(AddNoteLoading());
    try {
      var notBox = Hive.box<NotesModel>(kNotesBox);
      note.color = color.value;
      await notBox.add(note);
      emit(AddNoteSuccess());
    } on Exception catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
