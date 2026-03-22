import 'package:flutter/foundation.dart';

@immutable
class Note {
  final String title;
  final String description;

  const Note({
    required this.title,
    required this.description,
  });

  Note copyWith({
    String? title,
    String? description,
  }) {
    return Note(
      title: title ?? this.title,
      description: description ?? this.description,
    );
  }
}