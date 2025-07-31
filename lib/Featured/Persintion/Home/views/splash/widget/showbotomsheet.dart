import 'package:flutter/material.dart';
import 'package:wazker/Featured/utils/AppColors.dart';

class Showbotomsheet extends StatefulWidget {
  const Showbotomsheet({super.key});

  @override
  State<Showbotomsheet> createState() => _ShowbotomsheetState();
}

class _ShowbotomsheetState extends State<Showbotomsheet> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _globalKey.currentState!.showBottomSheet(
        (context) => Container(
          height: 200,
          color: Appcolors.Kbackground,
          child: Column(children: []),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(key: _globalKey);
  }
}
