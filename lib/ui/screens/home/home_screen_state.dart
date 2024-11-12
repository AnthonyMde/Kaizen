import 'package:kaizen/domain/models/challenger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_screen_state.freezed.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    required List<Challenger> challengers,
    @Default(false) bool isLoading,
    String? errorMessage
}) = _HomeScreenState;
}