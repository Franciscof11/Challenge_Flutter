import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:challenge_flutter/domain/student_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/student_repository.dart';

part 'create_student_bloc.freezed.dart';
part 'create_student_event.dart';
part 'create_student_state.dart';

class CreateStudentBloc extends Bloc<CreateStudentEvent, CreateStudentState> {
  final StudentRepository _repository;

  CreateStudentBloc({required StudentRepository repository})
      : _repository = repository,
        super(const CreateStudentState.initial()) {
    on<_CreateStudent>(_createStudent);
  }

  FutureOr<void> _createStudent(
    _CreateStudent event,
    Emitter<CreateStudentState> emit,
  ) async {
    try {
      emit(const CreateStudentState.loading());

      await Future.delayed(const Duration(milliseconds: 500));

      await _repository.createStudent(event.student);

      emit(
        const CreateStudentState.sucess(
            message: 'Aluno cadastrado com sucesso!'),
      );
    } catch (e) {
      log('Erro ao cadastrar aluno -> $e', error: e);
      emit(const CreateStudentState.error(message: 'Erro ao cadastrar aluno!'));
    }
  }
}
