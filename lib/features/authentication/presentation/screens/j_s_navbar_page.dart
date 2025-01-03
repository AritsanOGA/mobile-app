import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/features/home/presentation/pages/dashboard_screen.dart';
import 'package:artisan_oga/features/home/presentation/widgets/js_drawer.dart';
import 'package:artisan_oga/presentation/search_screen/search_screen.dart';
import 'package:artisan_oga/features/settings/presentation/pages/js_settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class JobSeekerNavBarPage extends StatelessWidget {
  JobSeekerNavBarPage({super.key});

  final List<Widget> pages = [
    DashboardPage(),
    SearchScreenPage(),
    JSSettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.kwhite,
          drawer: JSDrawer(),
          body: pages[state.selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.selectedIndex,
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
                    "assets/images/search-alt-1-svgrepo-com (1).svg"),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/images/Groupsettings.svg"),
                label: 'Settings',
              ),
            ],
            // items: <BottomNavigationBarItem>[
            //   BottomNavigationBarItem(
            //     backgroundColor: Color(0xFF3A332C),
            //     icon: SvgPicture.asset(
            //         "assets/images/solar_home-angle-2-outlinehome_icon.svg"),
            //     label: 'Home',
            //   ),
            //   BottomNavigationBarItem(
            //     backgroundColor: Color(0xFF3A332C),
            //     icon: SvgPicture.asset(
            //         "assets/images/material-symbols-light_fit-screencandidates.svg"),
            //     label: 'Candidates',
            //   ),
            //   BottomNavigationBarItem(
            //     backgroundColor: Color(0xFF3A332C),
            //     icon: SvgPicture.asset(
            //         "assets/images/basil_bag-outlinepost_job.svg"),
            //     label: 'Post Job',
            //   ),
            //   BottomNavigationBarItem(
            //     backgroundColor: Color(0xFF3A332C),
            //     icon: SvgPicture.asset("assets/images/Groupsettings.svg"),
            //     label: 'Settings',
            //   ),
            // ],
          ),
        );
      },
    );
  }
}
