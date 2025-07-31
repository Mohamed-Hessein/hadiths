import 'package:flutter/material.dart';
import 'package:wazker/Featured/utils/AppColors.dart';

class Textcrateaccountsection extends StatelessWidget {
  const Textcrateaccountsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Text(
            textAlign: TextAlign.center,
            'انشاء حساب',
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyLarge?.color,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
