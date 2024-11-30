import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/features/home/presentation/pages/dashboard_screen.dart';
import 'package:artisan_oga/presentation/search_screen/search_screen.dart';
import 'package:artisan_oga/presentation/settings_page_two_screen/settings_page_two_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class JobSeekerNavBarPage extends StatelessWidget {
  JobSeekerNavBarPage({super.key});
  final List<Widget> pages = [
    DashboardPage(),
    //const Center(child: Text('Home Page')),
    SearchScreenPage(),
    SettingsPageTwoScreen(),
    // const Center(child: Text('Search Page')),
    // const Center(child: Text('Profile Page')),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Scaffold(
          body: pages[state.selectedIndex ?? 0],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.selectedIndex ?? 0,
            onTap: (index) {
              context.read<AuthBloc>().add(AuthEvent.selectTab(index));
            },
            showSelectedLabels: true,
            showUnselectedLabels: true,
            unselectedItemColor: Colors.grey,
            backgroundColor: Color.fromARGB(255, 65, 44, 37),
            items: <BottomNavigationBarItem>[
              //  mainAxisSize: MainAxisSize.max,
              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          ),
        );
      },
    );
  }
}
