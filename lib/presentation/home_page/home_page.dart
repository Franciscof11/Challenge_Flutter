import 'package:challenge_flutter/config/constant_colors.dart';
import 'package:challenge_flutter/data/student_repositories.dart';
import 'package:flutter/material.dart';
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: SingleChildScrollView(
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
              const SizedBox(height: 5),
              //
              //
              //
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.86,
                child: AnimationLimiter(
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: students.length,
                    itemBuilder: (context, index) {
                      return AnimationConfiguration.staggeredList(
                        position: index,
                        delay: const Duration(milliseconds: 100),
                        child: SlideAnimation(
                          duration: const Duration(milliseconds: 2500),
                          curve: Curves.fastLinearToSlowEaseIn,
                          horizontalOffset: 30,
                          verticalOffset: 300.0,
                          child: FlipAnimation(
                            duration: const Duration(milliseconds: 3000),
                            curve: Curves.fastLinearToSlowEaseIn,
                            flipAxis: FlipAxis.y,
                            child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 7),
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
              //
              //
              //
/*               ListView.builder(
                shrinkWrap: true,
                itemCount: students.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => StudentListTile(
                  student: students[index],
                ),
              ) */
            ],
          ),
        ),
      ),
      //
      //
      //
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.6,
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
              const SizedBox(height: 50),
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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: BottomNavigationBar(
          backgroundColor: Colors.grey[200],
          elevation: 0,
          iconSize: 25,
          fixedColor: mainBlue,
          unselectedItemColor: mainBlue,
          items: [
            BottomNavigationBarItem(
              label: 'Menu',
              icon: GestureDetector(
                onTap: () => drawerKey.currentState?.openDrawer(),
                child: const Icon(
                  Icons.menu,
                ),
              ),
            ),
            const BottomNavigationBarItem(
              label: 'Notificações',
              icon: Icon(
                Icons.notifications_outlined,
              ),
            ),
            const BottomNavigationBarItem(
              label: 'Perfil',
              icon: Icon(
                Icons.account_circle_outlined,
              ),
            ),
          ],
        ),
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
        onPressed: () {},
      ),
    );
  }
}
