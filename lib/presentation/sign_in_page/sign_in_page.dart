import 'package:challenge_flutter/data/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/constant_colors.dart';
import '../widgets/custom_text_form_field.dart';
import '../widgets/remove_glow_effect.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final authRepository = AuthRepository();
  @override
  Widget build(BuildContext context) {
    double widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: RemoveGlowEffect(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  const SizedBox(height: 120),
                  //
                  Image.asset('assets/icon.png'),
                  //
                  const SizedBox(height: 60),
                  CustomTextFormField(
                    label: 'Email',
                    controller: emailController,
                    type: FormTypes.email,
                  ),
                  const SizedBox(height: 35),
                  CustomTextFormField(
                    label: 'Password',
                    isSecret: true,
                    controller: passwordController,
                    type: FormTypes.password,
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Esqueceu a senha?",
                      style: GoogleFonts.rubik(
                        color: Colors.grey[700],
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () async {
                      formKey.currentState?.validate();
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 80),
                      backgroundColor: mainBlue,
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: Text(
                      'Entrar',
                      style: GoogleFonts.rubik(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: widthDevice <= 380 ? 80 : 130,
                        child: Divider(
                          color: Colors.grey[600],
                          thickness: 0.5,
                        ),
                      ),
                      Text(
                        "Ou",
                        style: GoogleFonts.rubik(
                          color: Colors.grey[600],
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(
                        width: widthDevice <= 380 ? 80 : 130,
                        child: Divider(
                          color: Colors.grey[600],
                          thickness: 0.5,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      formKey.currentState?.validate();
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 80),
                      backgroundColor: Colors.white,
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side: const BorderSide(
                            color: mainBlue,
                            width: 2,
                          )),
                    ),
                    child: Text(
                      'Cadastrar',
                      style: GoogleFonts.rubik(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: mainBlue,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
