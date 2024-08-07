part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}
final class NotesILoading extends NotesState {}
final class NotesSuccess extends NotesState {

  final List<NotesModel> notes;

  NotesSuccess({required this.notes});
}
final class NotesFailure extends NotesState {

  final String message;
  NotesFailure({required this.message});
}

