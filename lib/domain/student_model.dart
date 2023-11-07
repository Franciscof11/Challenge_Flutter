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
}
