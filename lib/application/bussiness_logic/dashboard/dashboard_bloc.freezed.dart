// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllData,
    required TResult Function(int index) updateSelectedIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllData,
    TResult? Function(int index)? updateSelectedIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllData,
    TResult Function(int index)? updateSelectedIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllData value) getAllData,
    required TResult Function(UpdateSelectedIndex value) updateSelectedIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllData value)? getAllData,
    TResult? Function(UpdateSelectedIndex value)? updateSelectedIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllData value)? getAllData,
    TResult Function(UpdateSelectedIndex value)? updateSelectedIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardEventCopyWith<$Res> {
  factory $DashboardEventCopyWith(
          DashboardEvent value, $Res Function(DashboardEvent) then) =
      _$DashboardEventCopyWithImpl<$Res, DashboardEvent>;
}

/// @nodoc
class _$DashboardEventCopyWithImpl<$Res, $Val extends DashboardEvent>
    implements $DashboardEventCopyWith<$Res> {
  _$DashboardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllDataImplCopyWith<$Res> {
  factory _$$GetAllDataImplCopyWith(
          _$GetAllDataImpl value, $Res Function(_$GetAllDataImpl) then) =
      __$$GetAllDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllDataImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$GetAllDataImpl>
    implements _$$GetAllDataImplCopyWith<$Res> {
  __$$GetAllDataImplCopyWithImpl(
      _$GetAllDataImpl _value, $Res Function(_$GetAllDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllDataImpl implements GetAllData {
  const _$GetAllDataImpl();

  @override
  String toString() {
    return 'DashboardEvent.getAllData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllData,
    required TResult Function(int index) updateSelectedIndex,
  }) {
    return getAllData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllData,
    TResult? Function(int index)? updateSelectedIndex,
  }) {
    return getAllData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllData,
    TResult Function(int index)? updateSelectedIndex,
    required TResult orElse(),
  }) {
    if (getAllData != null) {
      return getAllData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllData value) getAllData,
    required TResult Function(UpdateSelectedIndex value) updateSelectedIndex,
  }) {
    return getAllData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllData value)? getAllData,
    TResult? Function(UpdateSelectedIndex value)? updateSelectedIndex,
  }) {
    return getAllData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllData value)? getAllData,
    TResult Function(UpdateSelectedIndex value)? updateSelectedIndex,
    required TResult orElse(),
  }) {
    if (getAllData != null) {
      return getAllData(this);
    }
    return orElse();
  }
}

abstract class GetAllData implements DashboardEvent {
  const factory GetAllData() = _$GetAllDataImpl;
}

/// @nodoc
abstract class _$$UpdateSelectedIndexImplCopyWith<$Res> {
  factory _$$UpdateSelectedIndexImplCopyWith(_$UpdateSelectedIndexImpl value,
          $Res Function(_$UpdateSelectedIndexImpl) then) =
      __$$UpdateSelectedIndexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$UpdateSelectedIndexImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$UpdateSelectedIndexImpl>
    implements _$$UpdateSelectedIndexImplCopyWith<$Res> {
  __$$UpdateSelectedIndexImplCopyWithImpl(_$UpdateSelectedIndexImpl _value,
      $Res Function(_$UpdateSelectedIndexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$UpdateSelectedIndexImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateSelectedIndexImpl implements UpdateSelectedIndex {
  const _$UpdateSelectedIndexImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'DashboardEvent.updateSelectedIndex(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSelectedIndexImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSelectedIndexImplCopyWith<_$UpdateSelectedIndexImpl> get copyWith =>
      __$$UpdateSelectedIndexImplCopyWithImpl<_$UpdateSelectedIndexImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllData,
    required TResult Function(int index) updateSelectedIndex,
  }) {
    return updateSelectedIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllData,
    TResult? Function(int index)? updateSelectedIndex,
  }) {
    return updateSelectedIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllData,
    TResult Function(int index)? updateSelectedIndex,
    required TResult orElse(),
  }) {
    if (updateSelectedIndex != null) {
      return updateSelectedIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllData value) getAllData,
    required TResult Function(UpdateSelectedIndex value) updateSelectedIndex,
  }) {
    return updateSelectedIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllData value)? getAllData,
    TResult? Function(UpdateSelectedIndex value)? updateSelectedIndex,
  }) {
    return updateSelectedIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllData value)? getAllData,
    TResult Function(UpdateSelectedIndex value)? updateSelectedIndex,
    required TResult orElse(),
  }) {
    if (updateSelectedIndex != null) {
      return updateSelectedIndex(this);
    }
    return orElse();
  }
}

abstract class UpdateSelectedIndex implements DashboardEvent {
  const factory UpdateSelectedIndex(final int index) =
      _$UpdateSelectedIndexImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$UpdateSelectedIndexImplCopyWith<_$UpdateSelectedIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DashboardState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  Dashbord? get dashbord => throw _privateConstructorUsedError;
  int get selectedIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res, DashboardState>;
  @useResult
  $Res call(
      {bool isLoading, bool hasError, Dashbord? dashbord, int selectedIndex});
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? dashbord = freezed,
    Object? selectedIndex = null,
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
      dashbord: freezed == dashbord
          ? _value.dashbord
          : dashbord // ignore: cast_nullable_to_non_nullable
              as Dashbord?,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashboardStateImplCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$DashboardStateImplCopyWith(_$DashboardStateImpl value,
          $Res Function(_$DashboardStateImpl) then) =
      __$$DashboardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, bool hasError, Dashbord? dashbord, int selectedIndex});
}

/// @nodoc
class __$$DashboardStateImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$DashboardStateImpl>
    implements _$$DashboardStateImplCopyWith<$Res> {
  __$$DashboardStateImplCopyWithImpl(
      _$DashboardStateImpl _value, $Res Function(_$DashboardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? dashbord = freezed,
    Object? selectedIndex = null,
  }) {
    return _then(_$DashboardStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      dashbord: freezed == dashbord
          ? _value.dashbord
          : dashbord // ignore: cast_nullable_to_non_nullable
              as Dashbord?,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DashboardStateImpl implements _DashboardState {
  const _$DashboardStateImpl(
      {required this.isLoading,
      required this.hasError,
      this.dashbord,
      required this.selectedIndex});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final Dashbord? dashbord;
  @override
  final int selectedIndex;

  @override
  String toString() {
    return 'DashboardState(isLoading: $isLoading, hasError: $hasError, dashbord: $dashbord, selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.dashbord, dashbord) ||
                other.dashbord == dashbord) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, hasError, dashbord, selectedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardStateImplCopyWith<_$DashboardStateImpl> get copyWith =>
      __$$DashboardStateImplCopyWithImpl<_$DashboardStateImpl>(
          this, _$identity);
}

abstract class _DashboardState implements DashboardState {
  const factory _DashboardState(
      {required final bool isLoading,
      required final bool hasError,
      final Dashbord? dashbord,
      required final int selectedIndex}) = _$DashboardStateImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  Dashbord? get dashbord;
  @override
  int get selectedIndex;
  @override
  @JsonKey(ignore: true)
  _$$DashboardStateImplCopyWith<_$DashboardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
