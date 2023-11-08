import 'package:challenge_flutter/domain/student_model.dart';
import 'package:dio/dio.dart';

class StudentRepository {
  Future<List<Student>> getAllStudents() async {
    final response = await Dio()
        .get('https://653c0826d5d6790f5ec7c664.mockapi.io/api/v1/student');

    return response.data
        .map<Student>((student) => Student.fromMap(student))
        .toList();
  }

  Future<void> deleteStudent(Student student) {
    return Dio().delete(
        'https://653c0826d5d6790f5ec7c664.mockapi.io/api/v1/student/${student.id}');
  }

  Future<void> createStudent(Student student) {
    return Dio().post(
      'https://653c0826d5d6790f5ec7c664.mockapi.io/api/v1/student',
      data: student.toMap(),
    );
  }
}
