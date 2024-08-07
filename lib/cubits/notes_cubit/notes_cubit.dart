import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/notes_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() async {

    try {
      var notBox = Hive.box<NotesModel>(kNotesBox);
      emit(NotesSuccess(notes: notBox.values.toList()));
    } on Exception catch (e) {
      emit(NotesFailure(message: e.toString()));
    }
  }
}
