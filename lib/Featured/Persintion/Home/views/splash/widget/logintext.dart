import 'package:flutter/material.dart';
import 'package:wazker/Featured/utils/AppColors.dart';

class Logintext extends StatelessWidget {
  const Logintext({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Text(
            textAlign: TextAlign.center,
            'تسجيل دخول',
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyLarge?.color,
              fontSize: 35,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
