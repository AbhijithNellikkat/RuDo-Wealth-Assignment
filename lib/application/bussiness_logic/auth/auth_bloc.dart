import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rudo_wealth_test/domain/models/auth/auth_model.dart';
import 'package:rudo_wealth_test/domain/repositories/auth_repo.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepo authService;

  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordSignInController = TextEditingController();
  TextEditingController emailSignInController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  AuthBloc(this.authService) : super(AuthState.initial()) {
    on<SignIn>(signIn);
    on<SignUP>(signUp);
    on<SignOut>(signOut);
    on<GoogleSignIn>(googleSignIn);
    on<TogglePasswordTap>((event, emit) {
      emit(state.copyWith(tapOnPassword: !state.tapOnPassword));
    });
  }

  Future<void> signIn(SignIn event, Emitter<AuthState> emit) async {
    emit(
      state.copyWith(hasError: false, isLoading: true),
    );
    final result = await authService.signInWithEmail(login: event.authModel);
    result.fold(
      (failure) => emit(state.copyWith(
          hasError: true, isLoading: false, message: failure.message)),
      (success) => emit(
        state.copyWith(
            signInSuccess: true,
            isLoading: false,
            message: 'You’re now signed in! Enjoy your experience.'),
      ),
    );
  }

  Future<void> signUp(SignUP event, Emitter<AuthState> emit) async {
    emit(state.copyWith(hasError: false, isLoading: true));
    final result = await authService.signUpWithEmail(signUp: event.authModel);
    result.fold(
      (failure) => emit(state.copyWith(
          hasError: true, isLoading: false, message: failure.message)),
      (success) => emit(
        state.copyWith(
            signInSuccess: true,
            isLoading: false,
            message: 'Registration successful! Welcome aboard.'),
      ),
    );
  }

  Future<void> googleSignIn(GoogleSignIn event, Emitter<AuthState> emit) async {
    emit(state.copyWith(hasError: false, isLoading: true));
    final result = await authService.signInWithGoogle();
    result.fold(
      (failure) => emit(
        state.copyWith(
            hasError: true, isLoading: false, message: failure.message),
      ),
      (success) => emit(
        state.copyWith(
            signInSuccess: true,
            isLoading: false,
            signUpSuccess: true,
            message: 'Signed in with Google successfully! Let’s get started.'),
      ),
    );
  }

  Future<void> signOut(SignOut event, Emitter<AuthState> emit) async {
    emit(state.copyWith(hasError: false, isLoading: true));
    final result = await authService.signOut();
    result.fold(
      (failure) => emit(
        state.copyWith(
            hasError: true,
            isLoading: false,
            message: failure.message,
            logOutSuccess: false),
      ),
      (success) => emit(
        state.copyWith(
            logOutSuccess: true,
            isLoading: false,
            message: success.message,
            signInSuccess: null,
            signUpSuccess: null),
      ),
    );
  }
}
