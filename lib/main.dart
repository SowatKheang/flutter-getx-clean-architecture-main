import 'package:flutter/material.dart';
import 'application/dependency/app_dependency.dart';
import 'presentation/note_app.dart';

void main() {
  AppDependencyInjectiion.init();
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const NoteApp());
}

