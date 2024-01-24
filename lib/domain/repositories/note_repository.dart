
import '../models/note_model.dart';

///
/// [NoteRepository]
///
abstract class NoteRepository {

  List<NoteModel> getNoteList();
  
  void addNewNote(NoteModel noteModel);

  void remoteNote(int index);

  void updateNote(NoteModel noteModel);

  // TODO: add more

}