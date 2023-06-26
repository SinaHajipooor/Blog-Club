import 'package:flutter/material.dart';
import 'package:sevenlearn/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const defaultFontFamily = 'Avenir';

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryTextColor = Color(0xff0D253C);
    final secondaryTextColor = Color(0xff2D4379);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          titleMedium: TextStyle(fontFamily: defaultFontFamily, color: secondaryTextColor, fontSize: 14),
          titleLarge: TextStyle(fontFamily: defaultFontFamily, fontWeight: FontWeight.bold, color: primaryTextColor, fontSize: 18),
          bodyMedium: TextStyle(fontFamily: defaultFontFamily, fontSize: 12, color: secondaryTextColor),
          headlineMedium: TextStyle(fontFamily: defaultFontFamily, fontSize: 24, color: primaryTextColor, fontWeight: FontWeight.bold),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
