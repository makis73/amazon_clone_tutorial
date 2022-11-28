///https://www.youtube.com/watch?v=ylJz7N-dv1E

import 'package:amazon_clone_latest/constants/global_variables.dart';
import 'package:amazon_clone_latest/features/auth/screens/auth_screen.dart';
import 'package:amazon_clone_latest/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon Clone',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        colorScheme: const ColorScheme.light(
          primary: GlobalVariables.secondaryColor,
        ),
        appBarTheme:const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black)
        )
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: AuthScreen(),
    );
  }
}
