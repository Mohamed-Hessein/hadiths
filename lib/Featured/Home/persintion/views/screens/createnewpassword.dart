import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:wazker/Featured/Home/persintion/views/screens/createnewpasswordbody.dart';
import 'package:wazker/Featured/utils/AppColors.dart';

class Createnewpassword extends StatelessWidget {
  const Createnewpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.Kbackground,
      appBar: AppBar(backgroundColor: Appcolors.Kprimiry),
      body: Createnewpasswordbody(),
    );
  }
}
