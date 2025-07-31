import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wazker/Featured/Home/persintion/views/screens/settingbody.dart';
import 'package:wazker/Featured/utils/AppColors.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.Ksurface,
      body: Settingbody(),
      appBar: AppBar(backgroundColor: Appcolors.Ksurface),
    );
  }
}
