import 'package:challenge_flutter/config/constant_colors.dart';
import 'package:challenge_flutter/domain/student_model.dart';
import 'package:challenge_flutter/presentation/list_students_page/bloc/student_list_bloc.dart';
import 'package:challenge_flutter/presentation/widgets/loader.dart';
import 'package:challenge_flutter/presentation/widgets/remove_glow_effect.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/student_list_tile.dart';
import '../widgets/toast.dart';

class ListStudentsPage extends StatelessWidget {
  const ListStudentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: BlocListener<StudentListBloc, StudentListState>(
        listenWhen: (previous, current) {
          return current.maybeWhen(
            sucessDelete: (message) => true,
            error: (message) => true,
            empty: (students) => true,
            orElse: () => false,
          );
        },
        listener: (context, state) {
          state.whenOrNull(empty: (students) {
            showToast(
              message: 'Nenhum Aluno encontrado!',
              color: Colors.red[400]!,
              context: context,
            );
          }, sucessDelete: (message) {
            showToast(
              message: message,
              color: const Color.fromARGB(255, 111, 255, 123),
              context: context,
            );
          }, error: (message) {
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
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  'Alunos',
                  style: GoogleFonts.rubik(
                    color: mainBlue,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Center(
                heightFactor: 10,
                child: Loader<StudentListBloc, StudentListState>(
                  selector: (state) {
                    return state.maybeWhen(
                      loading: () => true,
                      orElse: () => false,
                    );
                  },
                ),
              ),
              BlocSelector<StudentListBloc, StudentListState, List<Student>>(
                  selector: (state) {
                return state.maybeWhen(
                  data: (students) => students,
                  orElse: () => [],
                );
              }, builder: (context, students) {
                return RemoveGlowEffect(
                  child: Expanded(
                    child: RefreshIndicator(
                      onRefresh: () async {
                        context
                            .read<StudentListBloc>()
                            .add(const StudentListEvent.getAllStudents());
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
                );
              }),
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
                  GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, '/ListStudentsPage'),
                    child: Text(
                      'Página Inicial',
                      style: GoogleFonts.rubik(
                        color: mainBlue,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
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
                  GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, '/CreateStudentPage'),
                    child: Text(
                      'Cadastrar Aluno',
                      style: GoogleFonts.rubik(
                        color: mainBlue,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
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
        onPressed: () async {
          await Navigator.pushNamed(context, '/CreateStudentPage');
          if (context.mounted) {
            context
                .read<StudentListBloc>()
                .add(const StudentListEvent.getAllStudents());
          }
        },
      ),
    );
  }
}
