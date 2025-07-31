import 'package:flutter/material.dart';
import 'package:wazker/Featured/Home/persintion/views/screens/getcodebody.dart';

class Getcode extends StatelessWidget {
  const Getcode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,

        backgroundColor: Color(0xFF0097A7),
        flexibleSpace: Container(
          height: MediaQuery.of(context).size.width * .5,
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.15),
                BlendMode.srcATop,
              ),
              image: AssetImage('lib/assets/1000101720.png'),

              fit: BoxFit.fitHeight,
              repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ),
      body: Getcodebody(),
    );
  }
}
