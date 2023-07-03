import 'package:flutter/material.dart';
import 'package:blu/homepage/homepage.dart';

void main() {
  runApp(const Blu());
}

class Blu extends StatelessWidget {
  const Blu({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Recipe Calculator',
      theme: theme.copyWith(
        appBarTheme: AppBarTheme(backgroundColor: Colors.transparent, elevation: 0.0),
        scaffoldBackgroundColor: Color(0XFFEEF0F0),
        // primaryColorLight: Color(0XFF303F9F),
        // primaryColor: Color(0XFFC5CAE9),
        // primaryColorDark: Color(0XFF1a237e)
        colorScheme: theme.colorScheme.copyWith(
          primary: Color(0XFF1a237e),
          secondary: Colors.black,
        ),
      ),
      home: HomePage(),
        debugShowCheckedModeBanner:false
    );
  }
}
