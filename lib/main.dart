import 'package:artisan_oga/di.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Future.wait(
    [init(), Hive.initFlutter()],
  );

  await Hive.openBox("artisan");
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  Hive.box("artisan").put("new_job_data", []);

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor:
        const Color.fromARGB(255, 0, 0, 0), // navigation bar color
    statusBarColor: const Color.fromARGB(255, 0, 0, 0), // status bar color
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => AuthBloc())],
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            theme: theme,
            title: 'artisan_oga',
            debugShowCheckedModeBanner: false,
            initialRoute: AppRoutes.welcomePageScreen,
            routes: AppRoutes.routes,
            builder: EasyLoading.init(),
          );
        },
      ),
    );
  }
}
