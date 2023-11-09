// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StudentListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllStudents,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllStudents,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllStudents,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllStudents value) getAllStudents,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllStudents value)? getAllStudents,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllStudents value)? getAllStudents,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentListEventCopyWith<$Res> {
  factory $StudentListEventCopyWith(
          StudentListEvent value, $Res Function(StudentListEvent) then) =
      _$StudentListEventCopyWithImpl<$Res, StudentListEvent>;
}

/// @nodoc
class _$StudentListEventCopyWithImpl<$Res, $Val extends StudentListEvent>
    implements $StudentListEventCopyWith<$Res> {
  _$StudentListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllStudentsImplCopyWith<$Res> {
  factory _$$GetAllStudentsImplCopyWith(_$GetAllStudentsImpl value,
          $Res Function(_$GetAllStudentsImpl) then) =
      __$$GetAllStudentsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllStudentsImplCopyWithImpl<$Res>
    extends _$StudentListEventCopyWithImpl<$Res, _$GetAllStudentsImpl>
    implements _$$GetAllStudentsImplCopyWith<$Res> {
  __$$GetAllStudentsImplCopyWithImpl(
      _$GetAllStudentsImpl _value, $Res Function(_$GetAllStudentsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllStudentsImpl implements _GetAllStudents {
  const _$GetAllStudentsImpl();

  @override
  String toString() {
    return 'StudentListEvent.getAllStudents()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllStudentsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllStudents,
  }) {
    return getAllStudents();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllStudents,
  }) {
    return getAllStudents?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllStudents,
    required TResult orElse(),
  }) {
    if (getAllStudents != null) {
      return getAllStudents();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllStudents value) getAllStudents,
  }) {
    return getAllStudents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllStudents value)? getAllStudents,
  }) {
    return getAllStudents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllStudents value)? getAllStudents,
    required TResult orElse(),
  }) {
    if (getAllStudents != null) {
      return getAllStudents(this);
    }
    return orElse();
  }
}

abstract class _GetAllStudents implements StudentListEvent {
  const factory _GetAllStudents() = _$GetAllStudentsImpl;
}

/// @nodoc
mixin _$StudentListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Student> students) data,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Student> students)? data,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Student> students)? data,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StudentListInitialState value) initial,
    required TResult Function(_StudentListDataState value) data,
    required TResult Function(_StudentListLoadingState value) loading,
    required TResult Function(_StudentListErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StudentListInitialState value)? initial,
    TResult? Function(_StudentListDataState value)? data,
    TResult? Function(_StudentListLoadingState value)? loading,
    TResult? Function(_StudentListErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StudentListInitialState value)? initial,
    TResult Function(_StudentListDataState value)? data,
    TResult Function(_StudentListLoadingState value)? loading,
    TResult Function(_StudentListErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentListStateCopyWith<$Res> {
  factory $StudentListStateCopyWith(
          StudentListState value, $Res Function(StudentListState) then) =
      _$StudentListStateCopyWithImpl<$Res, StudentListState>;
}

/// @nodoc
class _$StudentListStateCopyWithImpl<$Res, $Val extends StudentListState>
    implements $StudentListStateCopyWith<$Res> {
  _$StudentListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StudentListInitialStateImplCopyWith<$Res> {
  factory _$$StudentListInitialStateImplCopyWith(
          _$StudentListInitialStateImpl value,
          $Res Function(_$StudentListInitialStateImpl) then) =
      __$$StudentListInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StudentListInitialStateImplCopyWithImpl<$Res>
    extends _$StudentListStateCopyWithImpl<$Res, _$StudentListInitialStateImpl>
    implements _$$StudentListInitialStateImplCopyWith<$Res> {
  __$$StudentListInitialStateImplCopyWithImpl(
      _$StudentListInitialStateImpl _value,
      $Res Function(_$StudentListInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StudentListInitialStateImpl implements _StudentListInitialState {
  const _$StudentListInitialStateImpl();

  @override
  String toString() {
    return 'StudentListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentListInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Student> students) data,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Student> students)? data,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Student> students)? data,
    TResult Function()? loading,
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
    required TResult Function(_StudentListInitialState value) initial,
    required TResult Function(_StudentListDataState value) data,
    required TResult Function(_StudentListLoadingState value) loading,
    required TResult Function(_StudentListErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StudentListInitialState value)? initial,
    TResult? Function(_StudentListDataState value)? data,
    TResult? Function(_StudentListLoadingState value)? loading,
    TResult? Function(_StudentListErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StudentListInitialState value)? initial,
    TResult Function(_StudentListDataState value)? data,
    TResult Function(_StudentListLoadingState value)? loading,
    TResult Function(_StudentListErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _StudentListInitialState implements StudentListState {
  const factory _StudentListInitialState() = _$StudentListInitialStateImpl;
}

/// @nodoc
abstract class _$$StudentListDataStateImplCopyWith<$Res> {
  factory _$$StudentListDataStateImplCopyWith(_$StudentListDataStateImpl value,
          $Res Function(_$StudentListDataStateImpl) then) =
      __$$StudentListDataStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Student> students});
}

/// @nodoc
class __$$StudentListDataStateImplCopyWithImpl<$Res>
    extends _$StudentListStateCopyWithImpl<$Res, _$StudentListDataStateImpl>
    implements _$$StudentListDataStateImplCopyWith<$Res> {
  __$$StudentListDataStateImplCopyWithImpl(_$StudentListDataStateImpl _value,
      $Res Function(_$StudentListDataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? students = null,
  }) {
    return _then(_$StudentListDataStateImpl(
      students: null == students
          ? _value._students
          : students // ignore: cast_nullable_to_non_nullable
              as List<Student>,
    ));
  }
}

/// @nodoc

class _$StudentListDataStateImpl implements _StudentListDataState {
  const _$StudentListDataStateImpl({required final List<Student> students})
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
    return 'StudentListState.data(students: $students)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentListDataStateImpl &&
            const DeepCollectionEquality().equals(other._students, _students));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_students));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentListDataStateImplCopyWith<_$StudentListDataStateImpl>
      get copyWith =>
          __$$StudentListDataStateImplCopyWithImpl<_$StudentListDataStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Student> students) data,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return data(students);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Student> students)? data,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return data?.call(students);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Student> students)? data,
    TResult Function()? loading,
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
    required TResult Function(_StudentListInitialState value) initial,
    required TResult Function(_StudentListDataState value) data,
    required TResult Function(_StudentListLoadingState value) loading,
    required TResult Function(_StudentListErrorState value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StudentListInitialState value)? initial,
    TResult? Function(_StudentListDataState value)? data,
    TResult? Function(_StudentListLoadingState value)? loading,
    TResult? Function(_StudentListErrorState value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StudentListInitialState value)? initial,
    TResult Function(_StudentListDataState value)? data,
    TResult Function(_StudentListLoadingState value)? loading,
    TResult Function(_StudentListErrorState value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _StudentListDataState implements StudentListState {
  const factory _StudentListDataState({required final List<Student> students}) =
      _$StudentListDataStateImpl;

  List<Student> get students;
  @JsonKey(ignore: true)
  _$$StudentListDataStateImplCopyWith<_$StudentListDataStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StudentListLoadingStateImplCopyWith<$Res> {
  factory _$$StudentListLoadingStateImplCopyWith(
          _$StudentListLoadingStateImpl value,
          $Res Function(_$StudentListLoadingStateImpl) then) =
      __$$StudentListLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StudentListLoadingStateImplCopyWithImpl<$Res>
    extends _$StudentListStateCopyWithImpl<$Res, _$StudentListLoadingStateImpl>
    implements _$$StudentListLoadingStateImplCopyWith<$Res> {
  __$$StudentListLoadingStateImplCopyWithImpl(
      _$StudentListLoadingStateImpl _value,
      $Res Function(_$StudentListLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StudentListLoadingStateImpl implements _StudentListLoadingState {
  const _$StudentListLoadingStateImpl();

  @override
  String toString() {
    return 'StudentListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentListLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Student> students) data,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Student> students)? data,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Student> students)? data,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StudentListInitialState value) initial,
    required TResult Function(_StudentListDataState value) data,
    required TResult Function(_StudentListLoadingState value) loading,
    required TResult Function(_StudentListErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StudentListInitialState value)? initial,
    TResult? Function(_StudentListDataState value)? data,
    TResult? Function(_StudentListLoadingState value)? loading,
    TResult? Function(_StudentListErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StudentListInitialState value)? initial,
    TResult Function(_StudentListDataState value)? data,
    TResult Function(_StudentListLoadingState value)? loading,
    TResult Function(_StudentListErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _StudentListLoadingState implements StudentListState {
  const factory _StudentListLoadingState() = _$StudentListLoadingStateImpl;
}

/// @nodoc
abstract class _$$StudentListErrorStateImplCopyWith<$Res> {
  factory _$$StudentListErrorStateImplCopyWith(
          _$StudentListErrorStateImpl value,
          $Res Function(_$StudentListErrorStateImpl) then) =
      __$$StudentListErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$StudentListErrorStateImplCopyWithImpl<$Res>
    extends _$StudentListStateCopyWithImpl<$Res, _$StudentListErrorStateImpl>
    implements _$$StudentListErrorStateImplCopyWith<$Res> {
  __$$StudentListErrorStateImplCopyWithImpl(_$StudentListErrorStateImpl _value,
      $Res Function(_$StudentListErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$StudentListErrorStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StudentListErrorStateImpl implements _StudentListErrorState {
  const _$StudentListErrorStateImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'StudentListState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentListErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentListErrorStateImplCopyWith<_$StudentListErrorStateImpl>
      get copyWith => __$$StudentListErrorStateImplCopyWithImpl<
          _$StudentListErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Student> students) data,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Student> students)? data,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Student> students)? data,
    TResult Function()? loading,
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
    required TResult Function(_StudentListInitialState value) initial,
    required TResult Function(_StudentListDataState value) data,
    required TResult Function(_StudentListLoadingState value) loading,
    required TResult Function(_StudentListErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StudentListInitialState value)? initial,
    TResult? Function(_StudentListDataState value)? data,
    TResult? Function(_StudentListLoadingState value)? loading,
    TResult? Function(_StudentListErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StudentListInitialState value)? initial,
    TResult Function(_StudentListDataState value)? data,
    TResult Function(_StudentListLoadingState value)? loading,
    TResult Function(_StudentListErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _StudentListErrorState implements StudentListState {
  const factory _StudentListErrorState({required final String message}) =
      _$StudentListErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$StudentListErrorStateImplCopyWith<_$StudentListErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
