import 'package:flutter/material.dart';
import 'package:wazker/Featured/Home/persintion/views/screens/Home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/1000101278.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: HomeViewBody(),
          ),
        ),
      ],
    );
  }
}
