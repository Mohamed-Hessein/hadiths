import 'package:flutter/material.dart';

class Remmberme extends StatelessWidget {
  const Remmberme({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.check_box, size: 19, color: Color(0xFF0097A7)),
          Text(
            '  Remember Me',
            style: TextStyle(color: Color(0xFF0097A7), fontSize: 12),
          ),
        ],
      ),
    );
  }
}
