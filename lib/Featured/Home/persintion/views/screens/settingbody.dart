import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wazker/Featured/Home/persintion/views/screens/Bookdetailsbody.dart';
import 'package:wazker/Featured/utils/AppColors.dart';
import 'package:wazker/globals.dart';

class Settingbody extends StatelessWidget {
  const Settingbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'الاعدادت',
          style: TextStyle(
            color: Appcolors.KText,
            fontSize: 25,
            fontFamily: 'Cairo',
          ),
        ),
        SizedBox(height: 25),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Appcolors.KcolorOfSheet,
                  ),
                  height: double.infinity,
                  width: double.infinity,
                ),

                ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Settings();
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Align(
          child: Column(
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  isdarkMode.value = !isdarkMode.value;
                },
                icon: Icon(Icons.dark_mode_rounded),
                label: Text(
                  'النمط',
                  style: TextStyle(color: Appcolors.KText, fontFamily: 'Cairo'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//   Container(
//     height: 50,
//     width: 300,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(14),
//       color: Colors.black,
//     ),
//     child: Expanded(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             'نمط التطبيق ',
//             style: TextStyle(
//               color: Appcolors.KText,
//               fontFamily: 'Cairo',
//             ),
//           ),
//           IconButton(onPressed: () {}, icon: Icon(Icons.dark_mode)),
//         ],
//       ),
//     ),
//   ),
