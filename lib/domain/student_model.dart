import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Student {
  final String createdAt;
  final String name;
  final int birthdate;
  final int cpf;
  final String email;
  final int academicRecord; // obs: original -> academic_record
  final String id;
  Student({
    required this.createdAt,
    required this.name,
    required this.birthdate,
    required this.cpf,
    required this.email,
    required this.academicRecord,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'name': name,
      'birthdate': birthdate,
      'cpf': cpf,
      'email': email,
      'academicRecord': academicRecord,
      'id': id,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      createdAt: map['createdAt'] ?? '',
      name: map['name'] ?? '',
      birthdate: map['birthdate'] ?? 0,
      cpf: map['cpf'] ?? 0,
      email: map['email'] ?? '',
      academicRecord: map['academicRecord'] ?? 0,
      id: map['id'] ?? '',
    );
  }
}
