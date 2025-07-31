import 'package:flutter/material.dart';

class TextLogin extends StatelessWidget {
  const TextLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          textAlign: TextAlign.center,
          '👋 اهلا بكم وسهلا ',
          style: TextStyle(color: Color(0xFF0097A7), fontSize: 25),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            'يرجي تسجيل الدخول بالبريد الألكتروني وكلمة المرور ',
            style: TextStyle(color: Color(0xFF0097A7), fontSize: 15),
          ),
        ),
      ],
    );
  }
}
