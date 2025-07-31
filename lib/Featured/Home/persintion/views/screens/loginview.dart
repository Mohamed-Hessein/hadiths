import 'package:flutter/material.dart';
import 'package:wazker/Featured/Home/persintion/views/screens/login_view_body.dart';
import 'package:wazker/Featured/utils/AppColors.dart';

class Loginview extends StatelessWidget {
  const Loginview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.Kbackground,
      appBar: AppBar(backgroundColor: Appcolors.Kprimiry),
      body: LoginViewBody(),
    );
  }
}
