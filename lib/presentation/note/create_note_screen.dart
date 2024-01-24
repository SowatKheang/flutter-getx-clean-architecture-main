
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../application/controllers/note_controller.dart';
import '../../domain/models/note_model.dart';

class CreateNoteScreen extends StatefulWidget {

  const CreateNoteScreen({super.key});

  @override
  State<CreateNoteScreen> createState() => _CreateNoteScreenState();
}

class _CreateNoteScreenState extends State<CreateNoteScreen> {

  final NoteController noteController = Get.find();
  final TextEditingController descriptionController = TextEditingController();
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Note'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Description :'),
            TextFormField(
              focusNode: focusNode,
              controller: descriptionController,
              maxLines: 5,
            ),
            const SizedBox(height: 8),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  NoteModel noteModel = NoteModel(
                    noteController.generateNoteId(), 
                    1, 
                    descriptionController.text, 
                    DateTime.now(),
                  );
                  
                  noteController.addNewNote(noteModel);

                  Get.back();
                },
                child: const Text('Add New Note'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}