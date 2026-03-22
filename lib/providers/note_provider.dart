import 'package:flutter/material.dart';
import '../models/note.dart';

class NoteProvider extends ChangeNotifier {
  final List<Note> _notes = [];

  List<Note> get notes => List.unmodifiable(_notes);

  void addNote(String title, String description) {
    if (title.trim().isEmpty) return;
    _notes.insert(0, Note(
      title: title.trim(),
      description: description.trim(),
    ));
    notifyListeners();
  }

  void deleteNote(int index) {
    if (index < 0 || index >= _notes.length) return;
    _notes.removeAt(index);
    notifyListeners();
  }

  void clearAll() {
    _notes.clear();
    notifyListeners();
  }

  void updateNote(int index, String title, String description) {
    if (index < 0 || index >= _notes.length) return;
    if (title.trim().isEmpty) return;

    _notes[index] = Note(
      title: title.trim(),
      description: description.trim(),
    );
    notifyListeners();
  }
}