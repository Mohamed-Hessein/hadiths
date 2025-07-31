import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wazker/Featured/Persintion/Home/views/splash/widget/Textfeildfromcreateaacount.dart';
import 'package:wazker/Featured/Persintion/Home/views/splash/widget/custombuttongetstarted.dart';
import 'package:wazker/Featured/utils/Router.dart';

class Forgotpasswordbody extends StatelessWidget {
  const Forgotpasswordbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Textforgot(),
        SizedBox(height: 35),
        Textfeildfromcreateaacount(labelTextl: 'Email'),
        SizedBox(height: 25),
        Align(
          alignment: Alignment.bottomCenter,
          child: Custombuttongetstarted(
            onTap: () {
              GoRouter.of(context).push(Router2.Kgetcode);
            },
            text: 'Contiune',
          ),
        ),
      ],
    );
  }
}

class Textforgot extends StatelessWidget {
  const Textforgot({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Text(
            textAlign: TextAlign.center,
            'نسيت كلمة المرور',
            style: TextStyle(color: Color(0xFF0097A7), fontSize: 25),
          ),

          Text(
            'اكتب البريد الاكتروني ,سوف نرسل لك رمز التحقق علي البريد الالكتروني',
            style: TextStyle(color: Color(0xFF0097A7), fontSize: 15),
          ),
        ],
      ),
    );
  }
}
