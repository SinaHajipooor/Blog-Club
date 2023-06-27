import 'package:flutter/material.dart';

class AuthIcons extends StatelessWidget {
  const AuthIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/img/icons/Google.png', width: 36, height: 36),
        const SizedBox(width: 24),
        Image.asset('assets/img/icons/Facebook.png', width: 36, height: 36),
        const SizedBox(width: 24),
        Image.asset('assets/img/icons/Twitter.png', width: 36, height: 36),
      ],
    );
  }
}
