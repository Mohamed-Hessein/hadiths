import 'package:flutter/material.dart';

class Textsplach extends StatelessWidget {
  const Textsplach({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      'وذكر فان الذكري تنفع المؤمنين',
      style: TextStyle(
        color: const Color(0xFF0097A7),
        fontSize: 24,
        fontFamily: 'Cairo',
      ),
    );
  }
}
