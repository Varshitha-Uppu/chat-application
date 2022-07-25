import 'screens/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'OpenSans',
        colorScheme: ColorScheme.light().copyWith(
          primary: Color(0xFF00A884),
          secondary: Color(0xFF00A884),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
