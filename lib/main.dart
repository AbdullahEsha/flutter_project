import 'package:flutter/material.dart';
import 'package:flutter_project/screens/Home.dart';
import 'package:flutter_project/screens/admin/dashboard.dart';
import 'package:flutter_project/screens/forgotPassword.dart';
import 'package:flutter_project/screens/login.dart';
import 'package:flutter_project/screens/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Navigation Example',
      initialRoute: '/',
      routes: {
        '/admin/dashboard': (context) => const AdminDashboard(),
        '/forgot-password': (context) => const ForgotPasswordScreen(),
        '/register': (context) => RegisterScreen(),
        '/login': (context) => LoginScreen(),
        '/': (context) => const HomeScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(title: const Text('404')),
            body: const Center(child: Text('Page not found')),
          ),
        );
      },
    );
  }
}
