import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
class Todo with _$Todo {
  const factory Todo({
    @Default('') final String title,
    final String? description,
    @JsonSerializable(fieldRename: FieldRename.snake) final DateTime? endDate,
    @Default('') final String type,
    @JsonSerializable(fieldRename: FieldRename.snake) final DateTime? authorId,
    final Priority? priority,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}

enum Priority { low, medium, high }