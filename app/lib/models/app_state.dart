import 'package:meta/meta.dart';

@immutable
class AppState {
  final bool loading;

  AppState({
    this.loading
  });

  AppState copyWith({
    bool loading
  }) {
    return new AppState(
        loading: loading ?? this.loading);
  }

  @override
  int get hashCode =>
      loading.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is AppState &&
              runtimeType == other.runtimeType &&
              loading == other.loading;

  @override
  String toString() {
    return 'AppState{loading: $loading}';
  }
}