// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StudentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Student> students) data,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Student> students)? data,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Student> students)? data,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StudentInitialState value) initial,
    required TResult Function(_StudentStateData value) data,
    required TResult Function(_StudentStateErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StudentInitialState value)? initial,
    TResult? Function(_StudentStateData value)? data,
    TResult? Function(_StudentStateErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StudentInitialState value)? initial,
    TResult Function(_StudentStateData value)? data,
    TResult Function(_StudentStateErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentStateCopyWith<$Res> {
  factory $StudentStateCopyWith(
          StudentState value, $Res Function(StudentState) then) =
      _$StudentStateCopyWithImpl<$Res, StudentState>;
}

/// @nodoc
class _$StudentStateCopyWithImpl<$Res, $Val extends StudentState>
    implements $StudentStateCopyWith<$Res> {
  _$StudentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StudentInitialStateImplCopyWith<$Res> {
  factory _$$StudentInitialStateImplCopyWith(_$StudentInitialStateImpl value,
          $Res Function(_$StudentInitialStateImpl) then) =
      __$$StudentInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StudentInitialStateImplCopyWithImpl<$Res>
    extends _$StudentStateCopyWithImpl<$Res, _$StudentInitialStateImpl>
    implements _$$StudentInitialStateImplCopyWith<$Res> {
  __$$StudentInitialStateImplCopyWithImpl(_$StudentInitialStateImpl _value,
      $Res Function(_$StudentInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StudentInitialStateImpl implements _StudentInitialState {
  _$StudentInitialStateImpl();

  @override
  String toString() {
    return 'StudentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Student> students) data,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Student> students)? data,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Student> students)? data,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StudentInitialState value) initial,
    required TResult Function(_StudentStateData value) data,
    required TResult Function(_StudentStateErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StudentInitialState value)? initial,
    TResult? Function(_StudentStateData value)? data,
    TResult? Function(_StudentStateErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StudentInitialState value)? initial,
    TResult Function(_StudentStateData value)? data,
    TResult Function(_StudentStateErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _StudentInitialState implements StudentState {
  factory _StudentInitialState() = _$StudentInitialStateImpl;
}

/// @nodoc
abstract class _$$StudentStateDataImplCopyWith<$Res> {
  factory _$$StudentStateDataImplCopyWith(_$StudentStateDataImpl value,
          $Res Function(_$StudentStateDataImpl) then) =
      __$$StudentStateDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Student> students});
}

/// @nodoc
class __$$StudentStateDataImplCopyWithImpl<$Res>
    extends _$StudentStateCopyWithImpl<$Res, _$StudentStateDataImpl>
    implements _$$StudentStateDataImplCopyWith<$Res> {
  __$$StudentStateDataImplCopyWithImpl(_$StudentStateDataImpl _value,
      $Res Function(_$StudentStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? students = null,
  }) {
    return _then(_$StudentStateDataImpl(
      students: null == students
          ? _value._students
          : students // ignore: cast_nullable_to_non_nullable
              as List<Student>,
    ));
  }
}

/// @nodoc

class _$StudentStateDataImpl implements _StudentStateData {
  _$StudentStateDataImpl({required final List<Student> students})
      : _students = students;

  final List<Student> _students;
  @override
  List<Student> get students {
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_students);
  }

  @override
  String toString() {
    return 'StudentState.data(students: $students)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentStateDataImpl &&
            const DeepCollectionEquality().equals(other._students, _students));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_students));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentStateDataImplCopyWith<_$StudentStateDataImpl> get copyWith =>
      __$$StudentStateDataImplCopyWithImpl<_$StudentStateDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Student> students) data,
    required TResult Function(String message) error,
  }) {
    return data(students);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Student> students)? data,
    TResult? Function(String message)? error,
  }) {
    return data?.call(students);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Student> students)? data,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(students);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StudentInitialState value) initial,
    required TResult Function(_StudentStateData value) data,
    required TResult Function(_StudentStateErrorState value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StudentInitialState value)? initial,
    TResult? Function(_StudentStateData value)? data,
    TResult? Function(_StudentStateErrorState value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StudentInitialState value)? initial,
    TResult Function(_StudentStateData value)? data,
    TResult Function(_StudentStateErrorState value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _StudentStateData implements StudentState {
  factory _StudentStateData({required final List<Student> students}) =
      _$StudentStateDataImpl;

  List<Student> get students;
  @JsonKey(ignore: true)
  _$$StudentStateDataImplCopyWith<_$StudentStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StudentStateErrorStateImplCopyWith<$Res> {
  factory _$$StudentStateErrorStateImplCopyWith(
          _$StudentStateErrorStateImpl value,
          $Res Function(_$StudentStateErrorStateImpl) then) =
      __$$StudentStateErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$StudentStateErrorStateImplCopyWithImpl<$Res>
    extends _$StudentStateCopyWithImpl<$Res, _$StudentStateErrorStateImpl>
    implements _$$StudentStateErrorStateImplCopyWith<$Res> {
  __$$StudentStateErrorStateImplCopyWithImpl(
      _$StudentStateErrorStateImpl _value,
      $Res Function(_$StudentStateErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$StudentStateErrorStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StudentStateErrorStateImpl implements _StudentStateErrorState {
  _$StudentStateErrorStateImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'StudentState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentStateErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentStateErrorStateImplCopyWith<_$StudentStateErrorStateImpl>
      get copyWith => __$$StudentStateErrorStateImplCopyWithImpl<
          _$StudentStateErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Student> students) data,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Student> students)? data,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Student> students)? data,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StudentInitialState value) initial,
    required TResult Function(_StudentStateData value) data,
    required TResult Function(_StudentStateErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StudentInitialState value)? initial,
    TResult? Function(_StudentStateData value)? data,
    TResult? Function(_StudentStateErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StudentInitialState value)? initial,
    TResult Function(_StudentStateData value)? data,
    TResult Function(_StudentStateErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _StudentStateErrorState implements StudentState {
  factory _StudentStateErrorState({required final String message}) =
      _$StudentStateErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$StudentStateErrorStateImplCopyWith<_$StudentStateErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
