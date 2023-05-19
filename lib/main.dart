import 'package:avocat/pages/about_screen.dart';
import 'package:avocat/pages/calender.dart';
import 'package:avocat/pages/event.dart';
import 'package:avocat/pages/folders.dart';
import 'package:avocat/pages/forgot_password.dart';
import 'package:avocat/pages/list_of_folders.dart';
import 'package:avocat/pages/login.dart';
import 'package:avocat/pages/menu.dart';
import 'package:avocat/pages/reset_password.dart';
import 'package:avocat/pages/signup.dart';
import 'package:avocat/pages/simple_dashboard.dart';
import 'package:avocat/pages/two_column_dashboard.dart';
//import 'package:avocat/pages/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',

      // routes
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const Login(),
        '/login': (context) => const Login(),
        '/signup': (context) => const Signup(),
        '/resetPassword': (context) => const ResetPassword(),
        '/forgotPassword': (context) => const ForgotPassword(),
        '/aboutScreen': (context) => const AboutScreen(),
        '/menu': (context) => const Menu(),
        '/Folders': (context) => const Folders(),
        '/ListOfFolders': (context) => const ListOfFolders(),
        '/SimpleDashboard': (context) => const SimpleDashboard(),
        '/DashboardTwoColumnCards': (context) =>
            const DashboardTwoColumnCards(),
        '/Calender': (context) => Calender(),
        '/Event': (context) => const Event(),
      },
    );
  }
}
