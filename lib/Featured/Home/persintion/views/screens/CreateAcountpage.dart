import 'package:flutter/material.dart';
import 'package:wazker/Featured/utils/AppColors.dart';
import 'Createacountpagebody.dart';

class Createacountpage extends StatelessWidget {
  const Createacountpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(backgroundColor: Appcolors.Kprimiry),
      body: Createacountpagebody(),
    );
  }
}
