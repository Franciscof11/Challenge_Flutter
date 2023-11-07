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
}

final List students = [
  Student(
    createdAt: '07/11/2023',
    name: 'Francisco Gabriel Santos',
    birthdate: 03112001,
    cpf: 05412776345,
    email: 'chico@teste.com',
    academicRecord: 9,
    id: "1",
  ),
  Student(
    createdAt: '06/11/2023',
    name: 'Tayssa Gabriele Lopes',
    birthdate: 01232001,
    cpf: 04442776345,
    email: 'tayssa@teste.com',
    academicRecord: 5,
    id: "2",
  ),
  Student(
    createdAt: '05/11/2023',
    name: 'Raffaela Castro',
    birthdate: 03112001,
    cpf: 05412726345,
    email: 'chico@teste.com',
    academicRecord: 4,
    id: "3",
  ),
  Student(
    createdAt: '05/11/2023',
    name: 'Raffaela Castro',
    birthdate: 03112001,
    cpf: 05412726345,
    email: 'chico@teste.com',
    academicRecord: 4,
    id: "3",
  ),
  Student(
    createdAt: '05/11/2023',
    name: 'Raffaela Castro',
    birthdate: 03112001,
    cpf: 05412726345,
    email: 'chico@teste.com',
    academicRecord: 4,
    id: "3",
  ),
  Student(
    createdAt: '05/11/2023',
    name: 'Raffaela Castro',
    birthdate: 03112001,
    cpf: 05412726345,
    email: 'chico@teste.com',
    academicRecord: 4,
    id: "3",
  ),
  Student(
    createdAt: '05/11/2023',
    name: 'Raffaela Castro',
    birthdate: 03112001,
    cpf: 05412726345,
    email: 'chico@teste.com',
    academicRecord: 4,
    id: "3",
  ),
  Student(
    createdAt: '05/11/2023',
    name: 'Raffaela Castro',
    birthdate: 03112001,
    cpf: 05412726345,
    email: 'chico@teste.com',
    academicRecord: 4,
    id: "3",
  ),
  Student(
    createdAt: '05/11/2023',
    name: 'Raffaela Castro',
    birthdate: 03112001,
    cpf: 05412726345,
    email: 'chico@teste.com',
    academicRecord: 4,
    id: "3",
  ),
  Student(
    createdAt: '05/11/2023',
    name: 'Raffaela Castro',
    birthdate: 03112001,
    cpf: 05412726345,
    email: 'chico@teste.com',
    academicRecord: 4,
    id: "3",
  ),
  Student(
    createdAt: '05/11/2023',
    name: 'Raffaela Castro',
    birthdate: 03112001,
    cpf: 05412726345,
    email: 'chico@teste.com',
    academicRecord: 4,
    id: "3",
  ),
  Student(
    createdAt: '05/11/2023',
    name: 'Raffaela Castro',
    birthdate: 03112001,
    cpf: 05412726345,
    email: 'chico@teste.com',
    academicRecord: 4,
    id: "3",
  ),
];
