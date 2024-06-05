import 'package:flutter/material.dart';

@immutable
class Task {
  const Task({required this.id, required this.name, this.active = true});

  final String id;
  final String name;
  final bool active;

  Task copyWith({String? id, String? name, bool? active = true}) {
    return Task(
        // ?? se fo null atribua this.id...
        id: id ?? this.id,
        name: name ?? this.name,
        active: active ?? this.active);
  }
}
