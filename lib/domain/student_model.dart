import 'dart:convert';

class Student {
  final String? createdAt;
  final String? name;
  final int? birthdate;
  final int? cpf;
  final String? email;
  final int? academicRecord; // obs: original -> academic_record
  final String? id;
  Student({
    this.createdAt,
    this.name,
    this.birthdate,
    this.cpf,
    this.email,
    this.academicRecord,
    this.id,
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
