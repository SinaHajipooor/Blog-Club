import 'package:flutter/material.dart';
import 'package:sevenlearn/gen/assets.gen.dart';
import 'package:sevenlearn/screens/auth/login_screen.dart';
import 'package:sevenlearn/screens/auth/signup_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  // 0 for login and 1 for sign up screen
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    final tabTextStyle = TextStyle(color: themeData.colorScheme.onPrimary, fontSize: 18, fontWeight: FontWeight.bold);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 32, top: 32),
              child: Assets.img.icons.logo.svg(width: 120),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                  color: themeData.colorScheme.primary,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                currentTab = 0;
                              });
                            },
                            child: Text(
                              'Login'.toUpperCase(),
                              style: tabTextStyle.apply(
                                color: currentTab == 0 ? Colors.white : Colors.white54,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                currentTab = 1;
                              });
                            },
                            child: Text(
                              'SignUp'.toUpperCase(),
                              style: tabTextStyle.apply(color: currentTab == 1 ? Colors.white : Colors.white54),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: themeData.colorScheme.surface,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(32),
                            topRight: Radius.circular(32),
                          ),
                        ),
                        child: currentTab == 0 ? const LoginScreen() : const SignupScreen(),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
