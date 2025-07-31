import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:go_router/go_router.dart';
import 'package:wazker/Featured/Home/persintion/views/screens/Bookpagebody.dart';
import 'package:wazker/Featured/Home/persintion/views/screens/setting.dart';
import 'package:wazker/Featured/utils/AppColors.dart';
import 'package:wazker/Featured/utils/Router.dart';

class Bookspage extends StatefulWidget {
  const Bookspage({super.key});

  @override
  State<Bookspage> createState() => _BookspageState();
}

class _BookspageState extends State<Bookspage> {
  var index = 0;
  final pages = [Setting(), Bookpagebody()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Appcolors.Ksurface),
      backgroundColor: Appcolors.Ksurface,
      body: Bookpagebody(),
    );
  }
}
