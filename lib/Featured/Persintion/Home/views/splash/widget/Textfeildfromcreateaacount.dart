import 'package:flutter/material.dart';
import 'package:wazker/Featured/utils/AppColors.dart';

class Textfeildfromcreateaacount extends StatelessWidget {
  const Textfeildfromcreateaacount({
    super.key,
    required this.labelTextl,
    this.onChanged,
  });
  final String labelTextl;
  final ValueChanged<String>? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 70),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: SizedBox(
          height: 70,
          child: TextFormField(
            validator: (data) {
              if (data!.isEmpty) {
                return 'يرجي ملي الحقل الادخال';
              }
            },
            onChanged: onChanged,
            decoration: InputDecoration(
              helperStyle: TextStyle(fontFamily: 'Cairo'),
              fillColor: Appcolors.Kwhite,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey),
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 16,
              ),
              hintText: labelTextl,
              labelStyle: TextStyle(color: Colors.grey[50]),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
