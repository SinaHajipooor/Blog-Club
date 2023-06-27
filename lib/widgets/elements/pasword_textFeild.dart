import 'package:flutter/material.dart';

class PasswordTextFeild extends StatefulWidget {
  const PasswordTextFeild({super.key});

  @override
  State<PasswordTextFeild> createState() => _PasswordTextFeildState();
}

class _PasswordTextFeildState extends State<PasswordTextFeild> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      enableSuggestions: false,
      autocorrect: false,
      obscureText: isObscure,
      decoration: InputDecoration(
        label: const Text('password'),
        suffix: InkWell(
          onTap: () {
            setState(() {
              isObscure = !isObscure;
            });
          },
          child: Text(
            isObscure ? 'show' : 'Hide',
            style: TextStyle(fontSize: 14, color: Theme.of(context).colorScheme.primary),
          ),
        ),
      ),
    );
  }
}
