import 'package:bank_app/pages/signup_page.dart';
import 'package:bank_app/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import "package:image_picker/image_picker.dart";


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   
    return  MaterialApp.router(   
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      routeInformationProvider: _router.routeInformationProvider,
      );   
  }

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) =>  welcomePage(),
      ), GoRoute(
        path: '/signup',
        builder: (context, state) =>  SignupPage(),
      ),
    ],
  );
}
