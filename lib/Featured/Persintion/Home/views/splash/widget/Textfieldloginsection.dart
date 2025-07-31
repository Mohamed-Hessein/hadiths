import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wazker/Featured/Persintion/Home/views/splash/widget/Remmberme.dart';
import 'package:wazker/Featured/Persintion/Home/views/splash/widget/Textfeildfromcreateaacount.dart';
import 'package:wazker/Featured/utils/Router.dart';

class Textfieldloginsection extends StatelessWidget {
  final ValueChanged<String> onChanged;
  Textfieldloginsection({super.key, required this.onChanged});
  late String email, password;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Textfeildfromcreateaacount(labelTextl: 'Email', onChanged: onChanged),
        Textfeildfromcreateaacount(
          labelTextl: 'Password',
          onChanged: onChanged,
        ),
        Padding(padding: const EdgeInsets.only(left: 20), child: Remmberme()),
        SizedBox(height: 16),
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push(Router2.Kforgot);
          },
          child: Text(
            textAlign: TextAlign.center,
            'Forgot password',
            style: TextStyle(color: Color(0xFFB3E5Fc)),
          ),
        ),
      ],
    );
  }
}
