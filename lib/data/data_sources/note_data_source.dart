
import '../../domain/models/note_model.dart';

///
/// [NoteDataSource]
///
class NoteDataSource {

  late List<NoteModel> _noteList;

  NoteDataSource() {
    _noteList = [
      /// `Uncomment to init default note on the screen`
      // NoteModel(1, 1, 'My Description 1', DateTime.now()),
      // NoteModel(2, 1, 'My Description 2', DateTime.now()),
    ];
  }

  List<NoteModel> getNoteList() {
    _noteList.sort((noteA, noteB) => noteB.id.compareTo(noteA.id));
    return _noteList;
  }

  void addNewNote(NoteModel note) {
    _noteList.add(note);
  }

  void removeNoteItem(int index) {
    _noteList.removeAt(index);
  }

  void updateNote(NoteModel note) {
    int updateIndex = _noteList.indexWhere((element) => element.id == note.id);
    _noteList[updateIndex] = note;
  }

  // TODO: add more business logic

}