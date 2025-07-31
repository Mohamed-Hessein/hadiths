import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wazker/Featured/Home/persintion/views/screens/Bookdetailsbody.dart';
import 'package:wazker/Featured/Persintion/Home/views/splash/CustomTextSPlash.dart';
import 'package:wazker/Featured/utils/AppColors.dart';
import 'package:wazker/Featured/utils/Router.dart';

class Bookdetails extends StatelessWidget {
  const Bookdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.Kwhite,
      body: Bookdetailsbody(),
      appBar: AppBar(
        backgroundColor: Appcolors.Kwhite,
        actions: [
          PopupMenuButton<String>(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  child: Text(
                    'الأعدادت',
                    style: TextStyle(fontFamily: 'Cairo'),
                  ),
                  value: 'edit',
                  onTap: () {
                    GoRouter.of(context).push(Router2.Ksetting);
                  },
                ),
              ];
            },
            icon: Icon(Icons.more_vert),
            onSelected: (value) {
              // Handle menu selection here
            },
          ),
        ],
      ),
    );
  }
}
