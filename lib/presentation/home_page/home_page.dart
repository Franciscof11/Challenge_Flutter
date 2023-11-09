import 'package:challenge_flutter/config/constant_colors.dart';
import 'package:challenge_flutter/domain/student_model.dart';
import 'package:challenge_flutter/presentation/bloc/student_bloc/student_bloc.dart';
import 'package:challenge_flutter/presentation/widgets/loader.dart';
import 'package:challenge_flutter/presentation/widgets/remove_glow_effect.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/student_list_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: BlocListener<StudentBloc, StudentState>(
        listenWhen: (previous, current) {
          return current.maybeWhen(
            error: (message) => true,
            orElse: () => false,
          );
        },
        listener: (context, state) {
          state.whenOrNull(
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
                  message,
                  style: GoogleFonts.rubik(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                backgroundColor: Colors.red[400],
              ));
            },
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            children: [
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lista de Alunos',
                    style: GoogleFonts.rubik(
                      color: mainBlue,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(2.5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        border: Border.all(
                          color: mainBlue,
                          width: 2,
                        )),
                    child: const Icon(
                      Icons.search,
                      color: mainBlue,
                      size: 32,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15),
              Loader<StudentBloc, StudentState>(
                selector: (state) {
                  return state.maybeWhen(
                    loading: () => true,
                    orElse: () => false,
                  );
                },
              ),
              BlocSelector<StudentBloc, StudentState, List<Student>>(
                selector: (state) {
                  return state.maybeWhen(
                    data: (students) => students,
                    orElse: () => [],
                  );
                },
                builder: (context, students) => RemoveGlowEffect(
                  child: Expanded(
                    child: RefreshIndicator(
                      onRefresh: () async {
                        context
                            .read<StudentBloc>()
                            .add(StudentEvent.getAllStudents());
                      },
                      child: MediaQuery.removePadding(
                        context: context,
                        removeTop: true,
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height,
                          child: AnimationLimiter(
                            child: ListView.builder(
                              physics: const BouncingScrollPhysics(
                                  parent: AlwaysScrollableScrollPhysics()),
                              shrinkWrap: true,
                              itemCount: students.length,
                              itemBuilder: (context, index) {
                                return AnimationConfiguration.staggeredList(
                                  position: index,
                                  delay: const Duration(milliseconds: 100),
                                  child: SlideAnimation(
                                    duration:
                                        const Duration(milliseconds: 2500),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    horizontalOffset: 30,
                                    verticalOffset: 300.0,
                                    child: FlipAnimation(
                                      duration:
                                          const Duration(milliseconds: 3000),
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      flipAxis: FlipAxis.y,
                                      child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 7),
                                          child: StudentListTile(
                                            student: students[index],
                                          )),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      //
      //
      //
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.8,
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 60),
              Row(
                children: [
                  const Icon(
                    Icons.home_rounded,
                    color: mainBlue,
                    size: 30,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Página Inicial',
                    style: GoogleFonts.rubik(
                      color: mainBlue,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              SizedBox(
                child: Divider(
                  color: Colors.grey[600],
                  thickness: 0.5,
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  const Icon(
                    Icons.add,
                    color: mainBlue,
                    size: 30,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Cadastrar Aluno',
                    style: GoogleFonts.rubik(
                      color: mainBlue,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              SizedBox(
                child: Divider(
                  color: Colors.grey[600],
                  thickness: 0.5,
                ),
              ),
            ],
          ),
        ),
      ),
      key: drawerKey,
      //
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value == 0) drawerKey.currentState?.openDrawer();
        },
        backgroundColor: Colors.grey[200],
        elevation: 0,
        iconSize: 25,
        fixedColor: mainBlue,
        unselectedItemColor: mainBlue,
        items: const [
          BottomNavigationBarItem(
            label: 'Menu',
            icon: Icon(
              Icons.menu,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Notificações',
            icon: Icon(
              Icons.notifications_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Perfil',
            icon: Icon(
              Icons.account_circle_outlined,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
        label: Row(
          children: [
            const Icon(Icons.add),
            const SizedBox(width: 6),
            Text(
              'Cadastrar Aluno',
              style: GoogleFonts.rubik(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        backgroundColor: mainBlue,
        elevation: 0,
        onPressed: () {
          Navigator.pushNamed(context, '/CreateStudentPage');
        },
      ),
    );
  }
}
