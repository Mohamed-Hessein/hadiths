import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wazker/Featured/Persintion/Home/views/splash/CustomTextSPlash.dart';
import 'package:wazker/Featured/utils/Router.dart';

class SplachBody extends StatefulWidget {
  const SplachBody({super.key});

  @override
  State<SplachBody> createState() => _SplachBodyState();
}

class _SplachBodyState extends State<SplachBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
      vsync: this as TickerProvider,
      duration: const Duration(seconds: 4),
    );
    animation = Tween<double>(begin: 1.9, end: 1.0).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeOut),
    );
    animationController.forward();
    Future.delayed(Duration(seconds: 5), () {
      GoRouter.of(context).push(Router2.Klogin);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ScaleTransition(
          scale: animation,
          child: Image.asset('lib/assets/wazker.png', height: 150, width: 200),
        ),
        const SizedBox(height: 3),
        Textsplach(),
      ],
    );
  }
}
