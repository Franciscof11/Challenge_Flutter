import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:challenge_flutter/data/student_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/student_model.dart';

part 'edit_student_bloc.freezed.dart';
part 'edit_student_event.dart';
part 'edit_student_state.dart';

class EditStudentBloc extends Bloc<EditStudentEvent, EditStudentState> {
  final StudentRepository _repository;

  EditStudentBloc({required StudentRepository repository})
      : _repository = repository,
        super(const EditStudentState.initial()) {
    on<_UpdateStudent>(_updateStudent);
  }

  Future<void> _updateStudent(
    _UpdateStudent event,
    Emitter<EditStudentState> emit,
  ) async {
    try {
      emit(const EditStudentState.loading());

      await Future.delayed(const Duration(milliseconds: 400));

      await _repository.updateStudent(event.student);

      emit(
        const EditStudentState.sucess(message: 'Aluno editado com sucesso!'),
      );
    } catch (e) {
      const EditStudentState.error(message: 'Erro ao editar aluno!');
    }
  }
}
