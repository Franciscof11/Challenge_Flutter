import 'package:challenge_flutter/config/constant_colors.dart';
import 'package:challenge_flutter/config/form_masks.dart';
import 'package:challenge_flutter/domain/student_model.dart';
import 'package:challenge_flutter/presentation/create_student_page/bloc/create_student_bloc.dart';
import 'package:challenge_flutter/presentation/widgets/custom_text_form_field.dart';
import 'package:challenge_flutter/presentation/widgets/loader.dart';
import 'package:challenge_flutter/presentation/widgets/remove_glow_effect.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/toast.dart';

class CreateStudentPage extends StatefulWidget {
  const CreateStudentPage({super.key});

  @override
  State<CreateStudentPage> createState() => _CreateStudentPageState();
}

class _CreateStudentPageState extends State<CreateStudentPage> {
  final formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();

  final birthDateController = TextEditingController();

  final cpfDateController = TextEditingController();

  final raController = TextEditingController();

  final emailController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    birthDateController.dispose();
    cpfDateController.dispose();
    raController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<CreateStudentBloc, CreateStudentState>(
        listenWhen: (previous, current) {
          return current.maybeWhen(
            sucess: (message) => true,
            error: (message) => true,
            orElse: () => false,
          );
        },
        listener: (context, state) {
          state.whenOrNull(
            sucess: (message) {
              Navigator.pop(context);
              showToast(
                message: message,
                color: const Color.fromARGB(255, 111, 255, 123),
                context: context,
              );
            },
            error: (message) {
              showToast(
                message: message,
                color: Colors.red[400]!,
                context: context,
              );
            },
          );
        },
        child: RemoveGlowEffect(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 50),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: mainBlue,
                            size: 28,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Cadastrar Aluno',
                            style: GoogleFonts.rubik(
                              color: mainBlue,
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
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
                      type: FormTypes.other,
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
                    const SizedBox(height: 0),
                    Loader<CreateStudentBloc, CreateStudentState>(
                      selector: (state) {
                        return state.maybeWhen(
                          loading: () => true,
                          orElse: () => false,
                        );
                      },
                    ),
                    const SizedBox(height: 50),
                    Align(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: mainBlue,
                            fixedSize: const Size(190, 55)),
                        onPressed: () {
                          final formValid =
                              formKey.currentState?.validate() ?? false;

                          if (formValid) createStudent(context);
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
      ),
    );
  }

  createStudent(BuildContext context) async {
    final formattedCpf = formatString(cpfDateController.text);
    final formatedBirthDate = formatString(birthDateController.text);

    final newStudent = Student(
      createdAt: DateTime.now().toString(),
      academicRecord: int.tryParse(raController.text),
      name: nameController.text,
      birthdate: int.tryParse(formatedBirthDate),
      cpf: int.tryParse(formattedCpf),
      email: emailController.text,
    );

    context.read<CreateStudentBloc>().add(
          CreateStudentEvent.createStudent(student: newStudent),
        );
  }

  String formatString(String string) {
    return string.replaceAll(RegExp(r'[^\d]'), '');
  }
}
