import 'package:challenge_flutter/config/constant_colors.dart';
import 'package:challenge_flutter/presentation/bloc/student_bloc/student_bloc.dart';
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
      child: Material(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    student.name ?? '',
                    style: GoogleFonts.rubik(
                      color: mainGreen,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Icon(
                      Icons.edit_outlined,
                      color: mainBlue,
                      size: 28,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              Text(
                'CPF: ${student.cpf}',
                style: GoogleFonts.rubik(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'E-mail: ${student.email}',
                    style: GoogleFonts.rubik(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
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
                                  context.read<StudentBloc>().add(
                                        StudentEvent.delete(student: student),
                                      );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text(
                                      'Aluno excluido com sucesso',
                                      style: GoogleFonts.rubik(
                                        color: mainBlue,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    backgroundColor: const Color.fromARGB(
                                        255, 111, 255, 123),
                                  ));
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
