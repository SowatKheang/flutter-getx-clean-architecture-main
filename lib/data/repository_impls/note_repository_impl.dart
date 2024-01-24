
import 'package:demo_flutter_getx_clean_architecture/data/data_sources/note_data_source.dart';
import 'package:demo_flutter_getx_clean_architecture/domain/models/note_model.dart';
import 'package:demo_flutter_getx_clean_architecture/domain/repositories/note_repository.dart';

///
/// [NoteRepositoryImpl]
///
class NoteRepositoryImpl implements NoteRepository {

  final NoteDataSource noteDataSource;
  NoteRepositoryImpl(this.noteDataSource);

  @override
  void addNewNote(NoteModel noteModel) {
    noteDataSource.addNewNote(noteModel);
  }

  @override
  List<NoteModel> getNoteList() {
    return noteDataSource.getNoteList();
  }

  @override
  void remoteNote(int index) {
    noteDataSource.removeNoteItem(index);
  }

  @override
  void updateNote(NoteModel noteModel) {
    noteDataSource.updateNote(noteModel);
  }

}