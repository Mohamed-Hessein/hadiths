import 'package:flutter/material.dart';
import 'package:wazker/Featured/utils/AppColors.dart';

class Checkedbox extends StatefulWidget {
  Checkedbox({super.key});

  @override
  State<Checkedbox> createState() => _CheckedboxState();
}

class _CheckedboxState extends State<Checkedbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 50),
      child: Align(
        alignment: Alignment.centerRight,
        child: Row(
          children: [
            Checkbox(
              semanticLabel: 'ذكرني',

              value: isChecked,
              onChanged: (bool? value) => setState(() {
                isChecked = value!;
              }),
            ),
            Text(
              'ذكرني',
              style: TextStyle(color: Appcolors.KText, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
