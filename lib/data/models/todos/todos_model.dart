import 'package:freezed_annotation/freezed_annotation.dart';

part 'todos_model.freezed.dart';
part 'todos_model.g.dart';

@freezed
class TodosModel with _$TodosModel {
  const factory TodosModel({
    final String? title,
    final String? description,
    @JsonSerializable(fieldRename: FieldRename.snake) final DateTime? endDate,
    final String? type,
    @JsonSerializable(fieldRename: FieldRename.snake) final DateTime? authorId,
  }) = _TodosModel;

  factory TodosModel.fromJson(Map<String, dynamic> json) =>
      _$TodosModelFromJson(json);
}
