import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/features/home/presentation/pages/employer_dashboard_page.dart';
import 'package:artisan_oga/features/home/presentation/pages/post_job_one_page.dart';
import 'package:artisan_oga/presentation/dashboard_menu_page_draweritem/dashboard_menu_page_draweritem.dart';
import 'package:artisan_oga/presentation/settings_page_one_screen/settings_page_one_screen.dart';
import 'package:artisan_oga/presentation/view_all_candidates/view_all_candidates.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmployerNavBarPage extends StatelessWidget {
  EmployerNavBarPage({super.key});
  final List<Widget> pages = [
    EmployerDashboardPage(),
    const Center(child: Text('Profile Page')),
    //ViewAllCandidatesPageScreen(),
    PostJobOnePage(),
    const Center(child: Text('Profile Page')),
    //   SettingsPageOneScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Scaffold(
          drawer: DashboardMenuPageDraweritem(),
          body: pages[state.selectedIndex ?? 0],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.selectedIndex ?? 0,
            onTap: (index) {
              print('in${index}');
              context.read<AuthBloc>().add(AuthEvent.selectTab(index));
            },
            showSelectedLabels: true,
            showUnselectedLabels: true,
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.brown,
            items: <BottomNavigationBarItem>[

              BottomNavigationBarItem(
                backgroundColor: Color(0xFF3A332C),
                icon: SvgPicture.asset(
                    "assets/images/solar_home-angle-2-outlinehome_icon.svg"),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                    "assets/images/material-symbols-light_fit-screencandidates.svg"),
                label: 'Candidates',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                    "assets/images/basil_bag-outlinepost_job.svg"),
                label: 'Post Job',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/images/Groupsettings.svg"),
                label: 'Settings',
              ),
            ],
          ),
        );
      },
    );
  }
}
