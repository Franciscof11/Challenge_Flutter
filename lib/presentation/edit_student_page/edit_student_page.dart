import 'package:challenge_flutter/config/constant_colors.dart';
import 'package:challenge_flutter/config/form_masks.dart';
import 'package:challenge_flutter/domain/student_model.dart';
import 'package:challenge_flutter/presentation/widgets/custom_text_form_field.dart';
import 'package:challenge_flutter/presentation/widgets/remove_glow_effect.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/toast.dart';
import 'bloc/edit_student_bloc.dart';

class EditStudentPage extends StatefulWidget {
  final Student student;
  const EditStudentPage({super.key, required this.student});

  @override
  State<EditStudentPage> createState() => _EditStudentPageState();
}

class _EditStudentPageState extends State<EditStudentPage> {
  final formKey = GlobalKey<FormState>();

  late final TextEditingController nameController;

  late final TextEditingController birthDateController;

  late final TextEditingController cpfDateController;

  late final TextEditingController raController;

  late final TextEditingController emailController;

  @override
  void initState() {
    nameController = TextEditingController(text: widget.student.name);
    birthDateController =
        TextEditingController(text: widget.student.birthdate.toString());
    cpfDateController =
        TextEditingController(text: widget.student.cpf.toString());

    raController =
        TextEditingController(text: widget.student.academicRecord.toString());
    super.initState();

    emailController = TextEditingController(text: widget.student.email);
  }

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
      body: BlocListener<EditStudentBloc, EditStudentState>(
        listenWhen: (previous, current) {
          return current.maybeWhen(
            loading: () => true,
            sucess: (message) => true,
            error: (message) => true,
            orElse: () => false,
          );
        },
        listener: (context, state) {
          state.whenOrNull(
            loading: () => showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(),
              ),
            ),
            sucess: (message) {
              Navigator.pushNamed(context, '/ListStudentsPage');
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
                    const SizedBox(height: 40),
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
                        Text(
                          'Editar Aluno',
                          style: GoogleFonts.rubik(
                            color: mainBlue,
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
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
                      disable: true,
                      keyboardType: TextInputType.number,
                      mask: [
                        Masks().cpfMask,
                      ],
                    ),
                    const SizedBox(height: 25),
                    CustomTextFormField(
                      label: 'Registro Acadêmico*',
                      controller: raController,
                      disable: true,
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
                            fixedSize: const Size(110, 55)),
                        onPressed: () {
                          final formValid =
                              formKey.currentState?.validate() ?? false;

                          if (formValid) createStudent(context);
                        },
                        child: Row(
                          children: [
                            Text(
                              'Salvar',
                              style: GoogleFonts.rubik(
                                color: Colors.white,
                                fontSize: 20,
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

    final editedStudent = Student(
      createdAt: DateTime.now().toString(),
      academicRecord: int.tryParse(raController.text),
      name: nameController.text,
      birthdate: int.tryParse(formatedBirthDate),
      id: widget.student.id,
      cpf: int.tryParse(formattedCpf),
      email: emailController.text,
    );

    context.read<EditStudentBloc>().add(
          EditStudentEvent.updateStudent(
            student: editedStudent,
          ),
        );
  }

  String formatString(String string) {
    return string.replaceAll(RegExp(r'[^\d]'), '');
  }
}
