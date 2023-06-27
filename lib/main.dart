import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sevenlearn/navigation/bottom_tabs.dart';
import 'package:sevenlearn/screens/home_screen.dart';
import 'package:sevenlearn/screens/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
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
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(
              const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: defaultFontFamily,
              ),
            ),
          ),
        ),
        textTheme: TextTheme(titleMedium: TextStyle(fontFamily: defaultFontFamily, color: secondaryTextColor, fontSize: 14), titleLarge: TextStyle(fontFamily: defaultFontFamily, fontWeight: FontWeight.bold, color: primaryTextColor, fontSize: 18), bodyMedium: TextStyle(fontFamily: defaultFontFamily, fontSize: 12, color: secondaryTextColor), headlineMedium: TextStyle(fontFamily: defaultFontFamily, fontSize: 24, color: primaryTextColor, fontWeight: FontWeight.bold), headlineSmall: TextStyle(fontFamily: defaultFontFamily, fontSize: 20, color: primaryTextColor, fontWeight: FontWeight.bold)),
      ),
      // home: const Stack(
      //   children: [
      //     Positioned.fill(child: HomeScreen()),
      //     Positioned(bottom: 0, right: 0, left: 0, child: BottomTabs()),
      //   ],
      // ),
      home: const SplashScreen(),
    );
  }
}
