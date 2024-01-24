
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../application/bindings/note_binding.dart';
import 'note/note_list_screen.dart';

///
/// [NoteApp]
///
class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      initialBinding: NoteBinding(),
      home: const NoteListScreen(),
    );
  }
}