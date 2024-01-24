
import 'package:demo_flutter_getx_clean_architecture/data/repository_impls/note_repository_impl.dart';
import 'package:demo_flutter_getx_clean_architecture/domain/models/note_model.dart';
import 'package:get/get.dart';

///
/// [NoteController]
///
class NoteController extends GetxController {

  final NoteRepositoryImpl _noteRepositoryImpl;
  NoteController(this._noteRepositoryImpl);

  final _noteList = RxList<NoteModel>([]);

  RxList<NoteModel> get noteList => _noteList;

  void getNoteList() {
    _noteList.assignAll(_noteRepositoryImpl.getNoteList());
  }

  void remoteNote(int index) {
    _noteRepositoryImpl.remoteNote(index);
    getNoteList();
  }

  void addNewNote(NoteModel note) {
    _noteRepositoryImpl.addNewNote(note);
    getNoteList();
  }

  int generateNoteId() {
    return _noteList.length + 1;
  }

}