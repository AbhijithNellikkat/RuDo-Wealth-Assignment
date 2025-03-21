part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isLoading,
    required bool hasError,
    required bool tapOnPassword,
    String? message,
    bool? logOutSuccess,
    bool? signUpSuccess,
    bool? signInSuccess,
  }) = _Initial;

  factory AuthState.initial() => const AuthState(
        isLoading: false,
        hasError: false,
        tapOnPassword: false,
      );
}
