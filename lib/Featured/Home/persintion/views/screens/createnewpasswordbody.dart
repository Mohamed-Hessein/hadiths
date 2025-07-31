import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wazker/Featured/Home/persintion/views/screens/Forgotpasswordbody.dart';
import 'package:wazker/Featured/Persintion/Home/views/splash/widget/Remmberme.dart';
import 'package:wazker/Featured/Persintion/Home/views/splash/widget/Textfeildfromcreateaacount.dart';
import 'package:wazker/Featured/Persintion/Home/views/splash/widget/custombuttongetstarted.dart';
import 'package:wazker/Featured/utils/Router.dart';

class Createnewpasswordbody extends StatelessWidget {
  const Createnewpasswordbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Textforgot(),
        SizedBox(height: 35),
        Textfeildfromcreateaacount(labelTextl: 'password'),
        SizedBox(height: 15),
        Textfeildfromcreateaacount(labelTextl: ' confrim password'),
        SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.only(left: 30, bottom: 40),
          child: Remmberme(),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Custombuttongetstarted(onTap: () {}, text: 'Contiune'),
        ),
      ],
    );
  }
}
