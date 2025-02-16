import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/todo/todo.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<Todo> todos,
  }) = _HomeState;
}
