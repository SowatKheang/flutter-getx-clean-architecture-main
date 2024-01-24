import 'package:demo_flutter_getx_clean_architecture/data/repository_impls/note_repository_impl.dart';
import 'package:get/get.dart';
import '../controllers/note_controller.dart';

///
/// [NoteBinding]
///
class NoteBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => NoteController(Get.find<NoteRepositoryImpl>()));
  }
}
