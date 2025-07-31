import 'package:flutter/material.dart';
import 'package:wazker/Featured/utils/AppColors.dart';

class orCountueWithWidget extends StatelessWidget {
  const orCountueWithWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Theme.of(context).textTheme.bodyLarge?.color,
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),
        ),
        Text(' سجل باستخدام جوجل', style: TextStyle(color: Appcolors.KText)),

        Expanded(
          child: Divider(
            color: Theme.of(context).textTheme.bodyLarge?.color,
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),
        ),
      ],
    );
  }
}
