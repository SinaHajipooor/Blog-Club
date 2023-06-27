import 'package:flutter/material.dart';
import 'package:sevenlearn/widgets/elements/auth_icons.dart';
import 'package:sevenlearn/widgets/elements/pasword_textFeild.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(32, 48, 32, 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome black',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 8),
            Text(
              'Sign in with your account',
              style: themeData.textTheme.titleMedium,
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                label: Text('username'),
              ),
            ),
            const SizedBox(height: 20),
            const PasswordTextFeild(),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(
                  Size(MediaQuery.of(context).size.width, 60),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
              ),
              child: const Text('LOGIN'),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Forgot you password ?'),
                const SizedBox(width: 8),
                TextButton(onPressed: () {}, child: const Text('Reset here')),
              ],
            ),
            const Center(
              child: Text(
                'You are sign in with',
                style: TextStyle(letterSpacing: 2),
              ),
            ),
            const SizedBox(height: 16),
            const AuthIcons(),
          ],
        ),
      ),
    );
  }
}
