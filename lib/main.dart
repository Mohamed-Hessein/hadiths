import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wazker/Featured/Persintion/Home/data/manager/FirebaseloginCubit/googlecubit.dart';
import 'package:wazker/Featured/Persintion/Home/data/manager/FirebaseloginCubit/googleloginstate.dart';
import 'package:wazker/Featured/Persintion/Home/data/manager/FirebaseloginCubit/signincubit.dart';
import 'package:wazker/Featured/Persintion/Home/data/manager/FirebaseloginCubit/signinstate.dart';
import 'package:wazker/Featured/Persintion/Home/data/manager/FirebaseloginCubit/signupcubit.dart';
import 'package:wazker/Featured/Persintion/Home/data/manager/FirebaseloginCubit/signupstate.dart';
import 'package:wazker/Featured/Persintion/Home/views/splash/Splash.dart';
import 'package:wazker/Featured/utils/Router.dart';
import 'package:wazker/Featured/utils/theme.dart';
import 'package:wazker/firebase_options.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:wazker/globals.dart';
import 'package:wazker/Featured/Persintion/Home/data/manager/book_hatdih/api.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Api(Dio()).fetchHadith(number: 1);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => Googlecubit(signupgoogleintial())),
        BlocProvider(create: (context) => SignInCubit(signinintial())),
        BlocProvider(create: (context) => Signupcubit(signupintial())),
      ],

      child: ValueListenableBuilder<bool>(
        valueListenable: isdarkMode,
        builder: (context, isDark, child) {
          return MaterialApp.router(
            theme: light,
            darkTheme: DarkTjeme,
            debugShowCheckedModeBanner: false,
            themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
            routerConfig: Router2.router,
            // TODO: Provide your GoRouter or Router configuration here,
          );
        },
      ),
    );
  }
}
