import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/notes_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NotesModel>? notes;
  fetchAllNotes() {
    var notBox = Hive.box<NotesModel>(kNotesBox);
    notes = notBox.values.toList();

    emit(NotesSuccess());
  }
}
