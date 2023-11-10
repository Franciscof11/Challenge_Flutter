import 'package:challenge_flutter/config/constant_colors.dart';
import 'package:challenge_flutter/presentation/list_students_page/bloc/student_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../domain/student_model.dart';

class StudentListTile extends StatelessWidget {
  final Student student;
  const StudentListTile({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              stops: [0.02, 0.02], colors: [mainBlue, Colors.white]),
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      student.name ?? '',
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.rubik(
                        color: mainGreen,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: GestureDetector(
                      onTap: () async {
                        await Navigator.pushNamed(
                          context,
                          '/EditStudentPage',
                          arguments: student,
                        );
                        if (context.mounted) {
                          context
                              .read<StudentListBloc>()
                              .add(const StudentListEvent.getAllStudents());
                        }
                      },
                      child: const Icon(
                        Icons.edit_outlined,
                        color: mainBlue,
                        size: 28,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              Row(
                children: [
                  const Icon(
                    Icons.account_circle_outlined,
                    color: mainBlue,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    'CPF: ${student.cpf}',
                    style: GoogleFonts.rubik(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.email_outlined,
                    color: mainBlue,
                  ),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      '${student.email}',
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.rubik(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (dialogContext) => AlertDialog(
                            title: Text(
                              'Excluir Aluno',
                              style: GoogleFonts.rubik(
                                color: mainBlue,
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            content: Text(
                              'Tem certeza que deseja excluir este aluno?',
                              style: GoogleFonts.rubik(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  'Cancelar',
                                  style: GoogleFonts.rubik(
                                    color: mainBlue,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  context.read<StudentListBloc>().add(
                                        StudentListEvent.deleteStudent(
                                            student: student),
                                      );

                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  'Excluir aluno',
                                  style: GoogleFonts.rubik(
                                    color: mainBlue,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      child: Icon(
                        Icons.delete_outline_outlined,
                        color: Colors.red[500],
                        size: 28,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
