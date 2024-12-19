import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/features/home/presentation/pages/employer_dashboard_page.dart';
import 'package:artisan_oga/features/home/presentation/pages/post_job_one_page.dart';
import 'package:artisan_oga/features/settings/presentation/pages/settings_page.dart';
import 'package:artisan_oga/presentation/dashboard_menu_page_draweritem/dashboard_menu_page_draweritem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmployerNavBarPage extends StatelessWidget {
  EmployerNavBarPage({super.key});

  final List<Widget> pages = [
    EmployerDashboardPage(),
    //ViewAllCandidatesPageScreen(),
    const Center(child: Text('Candidate Page')),

    PostJobOnePage(),
   // SettingsPage()
    // SettingsPageTwoScreen(),
     const Center(child: Text('Settings Page')),
    // const Center(child: Text('Profile Page')),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.kwhite,
          drawer: DashboardMenuPageDraweritem(),
          body: pages[state.selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.selectedIndex,
            onTap: (index) {
              context.read<AuthBloc>().add(AuthEvent.selectTab(index));
            },
            showSelectedLabels: true,
            showUnselectedLabels: true,
            unselectedItemColor: Colors.grey,
            backgroundColor: Color.fromARGB(255, 65, 44, 37),
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                backgroundColor: Color(0xFF3A332C),
                icon: SvgPicture.asset(
                    "assets/images/solar_home-angle-2-outlinehome_icon.svg"),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                backgroundColor: Color(0xFF3A332C),
                icon: SvgPicture.asset(
                    "assets/images/material-symbols-light_fit-screencandidates.svg"),
                label: 'Candidates',
              ),
              BottomNavigationBarItem(
                backgroundColor: Color(0xFF3A332C),
                icon: SvgPicture.asset(
                    "assets/images/basil_bag-outlinepost_job.svg"),
                label: 'Post Job',
              ),
              BottomNavigationBarItem(
                backgroundColor: Color(0xFF3A332C),
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
