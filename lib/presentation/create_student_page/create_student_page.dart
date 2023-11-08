import 'package:challenge_flutter/config/constant_colors.dart';
import 'package:challenge_flutter/config/form_masks.dart';
import 'package:challenge_flutter/domain/student_model.dart';
import 'package:challenge_flutter/presentation/bloc/student_bloc/student_bloc.dart';
import 'package:challenge_flutter/presentation/widgets/custom_text_form_field.dart';
import 'package:challenge_flutter/presentation/widgets/remove_glow_effect.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateStudentPage extends StatelessWidget {
  CreateStudentPage({super.key});

  final formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();

  final birthDateController = TextEditingController();

  final cpfDateController = TextEditingController();

  final raController = TextEditingController();

  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RemoveGlowEffect(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  Text(
                    'Cadastrar Aluno',
                    style: GoogleFonts.rubik(
                      color: mainBlue,
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    'Dados gerais',
                    style: GoogleFonts.rubik(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 25),
                  CustomTextFormField(
                    label: 'Nome do Aluno*',
                    controller: nameController,
                    type: FormTypes.other,
                  ),
                  const SizedBox(height: 25),
                  CustomTextFormField(
                    label: 'Data de Nascimento',
                    controller: birthDateController,
                    type: FormTypes.birthDate,
                    keyboardType: TextInputType.datetime,
                    mask: [
                      Masks().birthDateMask,
                    ],
                  ),
                  const SizedBox(height: 25),
                  CustomTextFormField(
                    label: 'CPF*',
                    controller: cpfDateController,
                    type: FormTypes.other,
                    keyboardType: TextInputType.number,
                    mask: [
                      Masks().cpfMask,
                    ],
                  ),
                  const SizedBox(height: 25),
                  CustomTextFormField(
                    label: 'Registro Acadêmico*',
                    controller: raController,
                    keyboardType: TextInputType.number,
                    mask: [
                      Masks().ra,
                    ],
                    type: FormTypes.other,
                  ),
                  const SizedBox(height: 35),
                  Text(
                    'Dados de acesso',
                    style: GoogleFonts.rubik(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 25),
                  CustomTextFormField(
                    label: 'Email*',
                    controller: emailController,
                    type: FormTypes.email,
                  ),
                  const SizedBox(height: 50),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: mainBlue,
                          fixedSize: const Size(190, 55)),
                      onPressed: () {
                        formKey.currentState?.validate();
                        final newStudent = Student(
                          academicRecord: int.tryParse(raController.text),
                          name: nameController.text,
                          birthdate: int.tryParse(birthDateController.text),
                          cpf: int.tryParse(cpfDateController.text),
                          email: emailController.text,
                        );
                        context.read<StudentBloc>().add(
                              StudentEvent.create(student: newStudent),
                            );
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                            'Aluno cadastrado com sucesso!',
                            style: GoogleFonts.rubik(
                              color: mainBlue,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          backgroundColor:
                              const Color.fromARGB(255, 111, 255, 123),
                        ));
                        Navigator.pop(context);
                        /*  Navigator.pushNamed(context, '/HomePage'); */
                        raController.clear();
                        nameController.clear();
                        birthDateController.clear();
                        cpfDateController.clear();
                        emailController.clear();
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.add,
                            size: 26,
                          ),
                          const SizedBox(width: 6),
                          Text(
                            'Cadastrar',
                            style: GoogleFonts.rubik(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
