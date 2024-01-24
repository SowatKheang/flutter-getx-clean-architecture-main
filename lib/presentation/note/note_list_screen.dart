
import 'package:demo_flutter_getx_clean_architecture/presentation/note/create_note_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../application/controllers/note_controller.dart';

///
/// [NoteListScreen]
///
class NoteListScreen extends StatefulWidget {
  const NoteListScreen({super.key});

  @override
  State<NoteListScreen> createState() => _NoteListScreenState();
}

class _NoteListScreenState extends State<NoteListScreen> {

  final NoteController noteController = Get.find();

  @override
  void initState() {
    noteController.getNoteList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetX(
      init: noteController,
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Note App GetX Clean Arc'),
          ),
          body: noteController.noteList.isEmpty
          ? const Center(
            child: Text('Please add new note'),
          ) 
          : ListView(
              padding: const EdgeInsets.only(top: 4),
              children: noteController.noteList.asMap().map((index, note) {
                return MapEntry(
                  index, 
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.lightBlue[100],
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: ListTile(
                      title: Text(note.createdDate.toString()),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          note.getDescriptionWithId(),
                          style: TextStyle(color: Colors.blue[800], fontWeight: FontWeight.w700),
                        ),
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          noteController.remoteNote(index);
                        },
                      ),
                    ),
                  ),
                );
              }).values.toList(),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Get.to(const CreateNoteScreen());
            },
            child: const Icon(Icons.add),
          ),
        );
      }
    );
  }
}