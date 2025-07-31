import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wazker/Featured/Persintion/Home/views/splash/widget/custombuttongetstarted.dart';
import 'package:wazker/Featured/Persintion/Home/views/splash/widget/customsocliamedia.dart';
import 'package:wazker/Featured/utils/Router.dart';

class Getcodebody extends StatelessWidget {
  const Getcodebody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text(
            'تفحص بريدك الأكتروني',
            style: TextStyle(fontSize: 24, color: Color(0xFF0097A7)),
          ),
          SizedBox(height: 12),
          Text(
            'لقد قمنا برسال لك الرمز عبر البريد الأكتروني',
            style: TextStyle(fontSize: 14, color: Color(0xFF0097A7)),
          ),
          SizedBox(height: 12),

          Customsocliamedia(),
          SizedBox(height: 35),
          Text(
            'Didnt receive email',
            style: TextStyle(fontSize: 12, color: Color(0xFF0097A7)),
          ),
          SizedBox(height: 12),
          Align(
            alignment: Alignment.bottomCenter,
            child: Custombuttongetstarted(
              text: 'Confrim',
              onTap: () {
                GoRouter.of(context).push(Router2.Knewpassword);
              },
            ),
          ),
        ],
      ),
    );
  }
}
