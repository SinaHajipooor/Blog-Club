import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:sevenlearn/screens/root/splash_screen.dart';

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
    const primaryTextColor = Color(0xff0D253C);
    const secondaryTextColor = Color(0xff2D4379);
    const primaryColor = Color(0xff376AED);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: primaryColor,
          onPrimary: Colors.white,
          onSurface: primaryTextColor,
          onBackground: primaryTextColor,
          background: Color(0xffFBFCFF),
          surface: Colors.white,
        ),
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
        textTheme: const TextTheme(titleMedium: TextStyle(fontFamily: defaultFontFamily, color: secondaryTextColor, fontSize: 14), titleLarge: TextStyle(fontFamily: defaultFontFamily, fontWeight: FontWeight.bold, color: primaryTextColor, fontSize: 18), bodyMedium: TextStyle(fontFamily: defaultFontFamily, fontSize: 12, color: secondaryTextColor), headlineMedium: TextStyle(fontFamily: defaultFontFamily, fontSize: 24, color: primaryTextColor, fontWeight: FontWeight.bold), headlineSmall: TextStyle(fontFamily: defaultFontFamily, fontSize: 20, color: primaryTextColor, fontWeight: FontWeight.bold)),
      ),
      home: const SplashScreen(),
    );
  }
}
