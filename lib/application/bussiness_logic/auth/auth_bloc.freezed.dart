// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthModel authModel) signIn,
    required TResult Function(AuthModel authModel) signUP,
    required TResult Function() googleSignIn,
    required TResult Function() signOut,
    required TResult Function() togglePasswordTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthModel authModel)? signIn,
    TResult? Function(AuthModel authModel)? signUP,
    TResult? Function()? googleSignIn,
    TResult? Function()? signOut,
    TResult? Function()? togglePasswordTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel authModel)? signIn,
    TResult Function(AuthModel authModel)? signUP,
    TResult Function()? googleSignIn,
    TResult Function()? signOut,
    TResult Function()? togglePasswordTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUP value) signUP,
    required TResult Function(GoogleSignIn value) googleSignIn,
    required TResult Function(SignOut value) signOut,
    required TResult Function(TogglePasswordTap value) togglePasswordTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignUP value)? signUP,
    TResult? Function(GoogleSignIn value)? googleSignIn,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(TogglePasswordTap value)? togglePasswordTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUP value)? signUP,
    TResult Function(GoogleSignIn value)? googleSignIn,
    TResult Function(SignOut value)? signOut,
    TResult Function(TogglePasswordTap value)? togglePasswordTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignInImplCopyWith<$Res> {
  factory _$$SignInImplCopyWith(
          _$SignInImpl value, $Res Function(_$SignInImpl) then) =
      __$$SignInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthModel authModel});
}

/// @nodoc
class __$$SignInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInImpl>
    implements _$$SignInImplCopyWith<$Res> {
  __$$SignInImplCopyWithImpl(
      _$SignInImpl _value, $Res Function(_$SignInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authModel = null,
  }) {
    return _then(_$SignInImpl(
      authModel: null == authModel
          ? _value.authModel
          : authModel // ignore: cast_nullable_to_non_nullable
              as AuthModel,
    ));
  }
}

/// @nodoc

class _$SignInImpl implements SignIn {
  const _$SignInImpl({required this.authModel});

  @override
  final AuthModel authModel;

  @override
  String toString() {
    return 'AuthEvent.signIn(authModel: $authModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInImpl &&
            (identical(other.authModel, authModel) ||
                other.authModel == authModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInImplCopyWith<_$SignInImpl> get copyWith =>
      __$$SignInImplCopyWithImpl<_$SignInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthModel authModel) signIn,
    required TResult Function(AuthModel authModel) signUP,
    required TResult Function() googleSignIn,
    required TResult Function() signOut,
    required TResult Function() togglePasswordTap,
  }) {
    return signIn(authModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthModel authModel)? signIn,
    TResult? Function(AuthModel authModel)? signUP,
    TResult? Function()? googleSignIn,
    TResult? Function()? signOut,
    TResult? Function()? togglePasswordTap,
  }) {
    return signIn?.call(authModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel authModel)? signIn,
    TResult Function(AuthModel authModel)? signUP,
    TResult Function()? googleSignIn,
    TResult Function()? signOut,
    TResult Function()? togglePasswordTap,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(authModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUP value) signUP,
    required TResult Function(GoogleSignIn value) googleSignIn,
    required TResult Function(SignOut value) signOut,
    required TResult Function(TogglePasswordTap value) togglePasswordTap,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignUP value)? signUP,
    TResult? Function(GoogleSignIn value)? googleSignIn,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(TogglePasswordTap value)? togglePasswordTap,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUP value)? signUP,
    TResult Function(GoogleSignIn value)? googleSignIn,
    TResult Function(SignOut value)? signOut,
    TResult Function(TogglePasswordTap value)? togglePasswordTap,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class SignIn implements AuthEvent {
  const factory SignIn({required final AuthModel authModel}) = _$SignInImpl;

  AuthModel get authModel;
  @JsonKey(ignore: true)
  _$$SignInImplCopyWith<_$SignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUPImplCopyWith<$Res> {
  factory _$$SignUPImplCopyWith(
          _$SignUPImpl value, $Res Function(_$SignUPImpl) then) =
      __$$SignUPImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthModel authModel});
}

/// @nodoc
class __$$SignUPImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUPImpl>
    implements _$$SignUPImplCopyWith<$Res> {
  __$$SignUPImplCopyWithImpl(
      _$SignUPImpl _value, $Res Function(_$SignUPImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authModel = null,
  }) {
    return _then(_$SignUPImpl(
      authModel: null == authModel
          ? _value.authModel
          : authModel // ignore: cast_nullable_to_non_nullable
              as AuthModel,
    ));
  }
}

/// @nodoc

class _$SignUPImpl implements SignUP {
  const _$SignUPImpl({required this.authModel});

  @override
  final AuthModel authModel;

  @override
  String toString() {
    return 'AuthEvent.signUP(authModel: $authModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUPImpl &&
            (identical(other.authModel, authModel) ||
                other.authModel == authModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUPImplCopyWith<_$SignUPImpl> get copyWith =>
      __$$SignUPImplCopyWithImpl<_$SignUPImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthModel authModel) signIn,
    required TResult Function(AuthModel authModel) signUP,
    required TResult Function() googleSignIn,
    required TResult Function() signOut,
    required TResult Function() togglePasswordTap,
  }) {
    return signUP(authModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthModel authModel)? signIn,
    TResult? Function(AuthModel authModel)? signUP,
    TResult? Function()? googleSignIn,
    TResult? Function()? signOut,
    TResult? Function()? togglePasswordTap,
  }) {
    return signUP?.call(authModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel authModel)? signIn,
    TResult Function(AuthModel authModel)? signUP,
    TResult Function()? googleSignIn,
    TResult Function()? signOut,
    TResult Function()? togglePasswordTap,
    required TResult orElse(),
  }) {
    if (signUP != null) {
      return signUP(authModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUP value) signUP,
    required TResult Function(GoogleSignIn value) googleSignIn,
    required TResult Function(SignOut value) signOut,
    required TResult Function(TogglePasswordTap value) togglePasswordTap,
  }) {
    return signUP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignUP value)? signUP,
    TResult? Function(GoogleSignIn value)? googleSignIn,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(TogglePasswordTap value)? togglePasswordTap,
  }) {
    return signUP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUP value)? signUP,
    TResult Function(GoogleSignIn value)? googleSignIn,
    TResult Function(SignOut value)? signOut,
    TResult Function(TogglePasswordTap value)? togglePasswordTap,
    required TResult orElse(),
  }) {
    if (signUP != null) {
      return signUP(this);
    }
    return orElse();
  }
}

abstract class SignUP implements AuthEvent {
  const factory SignUP({required final AuthModel authModel}) = _$SignUPImpl;

  AuthModel get authModel;
  @JsonKey(ignore: true)
  _$$SignUPImplCopyWith<_$SignUPImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoogleSignInImplCopyWith<$Res> {
  factory _$$GoogleSignInImplCopyWith(
          _$GoogleSignInImpl value, $Res Function(_$GoogleSignInImpl) then) =
      __$$GoogleSignInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoogleSignInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GoogleSignInImpl>
    implements _$$GoogleSignInImplCopyWith<$Res> {
  __$$GoogleSignInImplCopyWithImpl(
      _$GoogleSignInImpl _value, $Res Function(_$GoogleSignInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoogleSignInImpl implements GoogleSignIn {
  const _$GoogleSignInImpl();

  @override
  String toString() {
    return 'AuthEvent.googleSignIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoogleSignInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthModel authModel) signIn,
    required TResult Function(AuthModel authModel) signUP,
    required TResult Function() googleSignIn,
    required TResult Function() signOut,
    required TResult Function() togglePasswordTap,
  }) {
    return googleSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthModel authModel)? signIn,
    TResult? Function(AuthModel authModel)? signUP,
    TResult? Function()? googleSignIn,
    TResult? Function()? signOut,
    TResult? Function()? togglePasswordTap,
  }) {
    return googleSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel authModel)? signIn,
    TResult Function(AuthModel authModel)? signUP,
    TResult Function()? googleSignIn,
    TResult Function()? signOut,
    TResult Function()? togglePasswordTap,
    required TResult orElse(),
  }) {
    if (googleSignIn != null) {
      return googleSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUP value) signUP,
    required TResult Function(GoogleSignIn value) googleSignIn,
    required TResult Function(SignOut value) signOut,
    required TResult Function(TogglePasswordTap value) togglePasswordTap,
  }) {
    return googleSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignUP value)? signUP,
    TResult? Function(GoogleSignIn value)? googleSignIn,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(TogglePasswordTap value)? togglePasswordTap,
  }) {
    return googleSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUP value)? signUP,
    TResult Function(GoogleSignIn value)? googleSignIn,
    TResult Function(SignOut value)? signOut,
    TResult Function(TogglePasswordTap value)? togglePasswordTap,
    required TResult orElse(),
  }) {
    if (googleSignIn != null) {
      return googleSignIn(this);
    }
    return orElse();
  }
}

abstract class GoogleSignIn implements AuthEvent {
  const factory GoogleSignIn() = _$GoogleSignInImpl;
}

/// @nodoc
abstract class _$$SignOutImplCopyWith<$Res> {
  factory _$$SignOutImplCopyWith(
          _$SignOutImpl value, $Res Function(_$SignOutImpl) then) =
      __$$SignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOutImpl>
    implements _$$SignOutImplCopyWith<$Res> {
  __$$SignOutImplCopyWithImpl(
      _$SignOutImpl _value, $Res Function(_$SignOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutImpl implements SignOut {
  const _$SignOutImpl();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthModel authModel) signIn,
    required TResult Function(AuthModel authModel) signUP,
    required TResult Function() googleSignIn,
    required TResult Function() signOut,
    required TResult Function() togglePasswordTap,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthModel authModel)? signIn,
    TResult? Function(AuthModel authModel)? signUP,
    TResult? Function()? googleSignIn,
    TResult? Function()? signOut,
    TResult? Function()? togglePasswordTap,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel authModel)? signIn,
    TResult Function(AuthModel authModel)? signUP,
    TResult Function()? googleSignIn,
    TResult Function()? signOut,
    TResult Function()? togglePasswordTap,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUP value) signUP,
    required TResult Function(GoogleSignIn value) googleSignIn,
    required TResult Function(SignOut value) signOut,
    required TResult Function(TogglePasswordTap value) togglePasswordTap,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignUP value)? signUP,
    TResult? Function(GoogleSignIn value)? googleSignIn,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(TogglePasswordTap value)? togglePasswordTap,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUP value)? signUP,
    TResult Function(GoogleSignIn value)? googleSignIn,
    TResult Function(SignOut value)? signOut,
    TResult Function(TogglePasswordTap value)? togglePasswordTap,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOut implements AuthEvent {
  const factory SignOut() = _$SignOutImpl;
}

/// @nodoc
abstract class _$$TogglePasswordTapImplCopyWith<$Res> {
  factory _$$TogglePasswordTapImplCopyWith(_$TogglePasswordTapImpl value,
          $Res Function(_$TogglePasswordTapImpl) then) =
      __$$TogglePasswordTapImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TogglePasswordTapImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$TogglePasswordTapImpl>
    implements _$$TogglePasswordTapImplCopyWith<$Res> {
  __$$TogglePasswordTapImplCopyWithImpl(_$TogglePasswordTapImpl _value,
      $Res Function(_$TogglePasswordTapImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TogglePasswordTapImpl implements TogglePasswordTap {
  const _$TogglePasswordTapImpl();

  @override
  String toString() {
    return 'AuthEvent.togglePasswordTap()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TogglePasswordTapImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthModel authModel) signIn,
    required TResult Function(AuthModel authModel) signUP,
    required TResult Function() googleSignIn,
    required TResult Function() signOut,
    required TResult Function() togglePasswordTap,
  }) {
    return togglePasswordTap();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthModel authModel)? signIn,
    TResult? Function(AuthModel authModel)? signUP,
    TResult? Function()? googleSignIn,
    TResult? Function()? signOut,
    TResult? Function()? togglePasswordTap,
  }) {
    return togglePasswordTap?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel authModel)? signIn,
    TResult Function(AuthModel authModel)? signUP,
    TResult Function()? googleSignIn,
    TResult Function()? signOut,
    TResult Function()? togglePasswordTap,
    required TResult orElse(),
  }) {
    if (togglePasswordTap != null) {
      return togglePasswordTap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUP value) signUP,
    required TResult Function(GoogleSignIn value) googleSignIn,
    required TResult Function(SignOut value) signOut,
    required TResult Function(TogglePasswordTap value) togglePasswordTap,
  }) {
    return togglePasswordTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignUP value)? signUP,
    TResult? Function(GoogleSignIn value)? googleSignIn,
    TResult? Function(SignOut value)? signOut,
    TResult? Function(TogglePasswordTap value)? togglePasswordTap,
  }) {
    return togglePasswordTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUP value)? signUP,
    TResult Function(GoogleSignIn value)? googleSignIn,
    TResult Function(SignOut value)? signOut,
    TResult Function(TogglePasswordTap value)? togglePasswordTap,
    required TResult orElse(),
  }) {
    if (togglePasswordTap != null) {
      return togglePasswordTap(this);
    }
    return orElse();
  }
}

abstract class TogglePasswordTap implements AuthEvent {
  const factory TogglePasswordTap() = _$TogglePasswordTapImpl;
}

/// @nodoc
mixin _$AuthState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get tapOnPassword => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get logOutSuccess => throw _privateConstructorUsedError;
  bool? get signUpSuccess => throw _privateConstructorUsedError;
  bool? get signInSuccess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool tapOnPassword,
      String? message,
      bool? logOutSuccess,
      bool? signUpSuccess,
      bool? signInSuccess});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? tapOnPassword = null,
    Object? message = freezed,
    Object? logOutSuccess = freezed,
    Object? signUpSuccess = freezed,
    Object? signInSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      tapOnPassword: null == tapOnPassword
          ? _value.tapOnPassword
          : tapOnPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      logOutSuccess: freezed == logOutSuccess
          ? _value.logOutSuccess
          : logOutSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      signUpSuccess: freezed == signUpSuccess
          ? _value.signUpSuccess
          : signUpSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      signInSuccess: freezed == signInSuccess
          ? _value.signInSuccess
          : signInSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool tapOnPassword,
      String? message,
      bool? logOutSuccess,
      bool? signUpSuccess,
      bool? signInSuccess});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? tapOnPassword = null,
    Object? message = freezed,
    Object? logOutSuccess = freezed,
    Object? signUpSuccess = freezed,
    Object? signInSuccess = freezed,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      tapOnPassword: null == tapOnPassword
          ? _value.tapOnPassword
          : tapOnPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      logOutSuccess: freezed == logOutSuccess
          ? _value.logOutSuccess
          : logOutSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      signUpSuccess: freezed == signUpSuccess
          ? _value.signUpSuccess
          : signUpSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      signInSuccess: freezed == signInSuccess
          ? _value.signInSuccess
          : signInSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      required this.tapOnPassword,
      this.message,
      this.logOutSuccess,
      this.signUpSuccess,
      this.signInSuccess});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool tapOnPassword;
  @override
  final String? message;
  @override
  final bool? logOutSuccess;
  @override
  final bool? signUpSuccess;
  @override
  final bool? signInSuccess;

  @override
  String toString() {
    return 'AuthState(isLoading: $isLoading, hasError: $hasError, tapOnPassword: $tapOnPassword, message: $message, logOutSuccess: $logOutSuccess, signUpSuccess: $signUpSuccess, signInSuccess: $signInSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.tapOnPassword, tapOnPassword) ||
                other.tapOnPassword == tapOnPassword) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.logOutSuccess, logOutSuccess) ||
                other.logOutSuccess == logOutSuccess) &&
            (identical(other.signUpSuccess, signUpSuccess) ||
                other.signUpSuccess == signUpSuccess) &&
            (identical(other.signInSuccess, signInSuccess) ||
                other.signInSuccess == signInSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hasError,
      tapOnPassword, message, logOutSuccess, signUpSuccess, signInSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements AuthState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      required final bool tapOnPassword,
      final String? message,
      final bool? logOutSuccess,
      final bool? signUpSuccess,
      final bool? signInSuccess}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get tapOnPassword;
  @override
  String? get message;
  @override
  bool? get logOutSuccess;
  @override
  bool? get signUpSuccess;
  @override
  bool? get signInSuccess;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
