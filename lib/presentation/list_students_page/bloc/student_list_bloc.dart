import 'dart:async';
import 'dart:developer';

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
      await Future.delayed(const Duration(milliseconds: 500));

      final students = await _repository.getAllStudents();

      if (students.isNotEmpty) {
        sortListByDate(students);

        emit(StudentListState.data(students: students));
      } else {
        emit(const StudentListState.empty(students: <Student>[]));
      }
    } catch (e) {
      log('Erro ao buscar alunos -> $e', error: e);
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

      emit(const StudentListState.sucessDelete(message: 'Aluno deletado!'));
    } catch (e) {
      log('Erro ao deletar aluno -> $e', error: e);
      emit(const StudentListState.error(message: 'Erro ao deletar aluno!'));

      add(const StudentListEvent.getAllStudents());
    }
  }
}

void sortListByDate(List list) {
  list.sort((a, b) => b.createdAt.compareTo(a.createdAt));
}
