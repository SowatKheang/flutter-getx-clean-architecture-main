
import 'package:demo_flutter_getx_clean_architecture/data/data_sources/note_data_source.dart';

import '../../data/repository_impls/note_repository_impl.dart';
import 'package:get/get.dart';

///
/// [AppDependencyInjectiion] inject data layer
///
class AppDependencyInjectiion {

  static init() {
    Get.lazyPut(() => NoteRepositoryImpl(NoteDataSource()));
  }

}