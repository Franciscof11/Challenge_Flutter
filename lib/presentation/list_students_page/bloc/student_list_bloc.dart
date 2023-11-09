import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:challenge_flutter/domain/student_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/student_repository.dart';

part 'student_list_bloc.freezed.dart';
part 'student_list_event.dart';
part 'student_list_state.dart';

class StudentListBloc extends Bloc<StudentListEvent, StudentListState> {
  final StudentRepository _repository;

  StudentListBloc({required StudentRepository repository})
      : _repository = repository,
        super(const StudentListState.initial()) {
    on<_GetAllStudents>(_getAllStudents);
    on<_DeleteStudent>(_deleteStudent);
  }

  Future<void> _getAllStudents(
    _GetAllStudents event,
    Emitter<StudentListState> emit,
  ) async {
    try {
      emit(const StudentListState.loading());

      final students = await _repository.getAllStudents();

      await Future.delayed(const Duration(seconds: 1));

      emit(StudentListState.data(students: students));
    } catch (e) {
      emit(const StudentListState.error(message: 'Erro ao buscar alunos!'));
    }
  }

  Future<void> _deleteStudent(
    _DeleteStudent event,
    Emitter<StudentListState> emit,
  ) async {
    try {
      await _repository.deleteStudent(event.student);

      add(const StudentListEvent.getAllStudents());
    } catch (e) {
      emit(const StudentListState.error(message: 'Erro ao deletar aluno!'));
    }
  }
}
