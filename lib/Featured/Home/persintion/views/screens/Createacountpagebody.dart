import 'dart:math';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:wazker/Featured/Persintion/Home/data/manager/FirebaseloginCubit/signupcubit.dart';
import 'package:wazker/Featured/Persintion/Home/data/manager/FirebaseloginCubit/signupstate.dart';
import 'package:wazker/Featured/Persintion/Home/views/splash/widget/Remmberme.dart';
import 'package:wazker/Featured/Persintion/Home/views/splash/widget/Textcrateaccountsection.dart';
import 'package:wazker/Featured/Persintion/Home/views/splash/widget/Textfeildfromcreateaacount.dart';
import 'package:wazker/Featured/Persintion/Home/views/splash/widget/checkedBox.dart';
import 'package:wazker/Featured/Persintion/Home/views/splash/widget/custombuttongetstarted.dart';
import 'package:wazker/Featured/utils/AppColors.dart';
import 'package:wazker/Featured/utils/Router.dart';

class Createacountpagebody extends StatefulWidget {
  Createacountpagebody({super.key});

  @override
  State<Createacountpagebody> createState() => _CreateacountpagebodyState();
}

class _CreateacountpagebodyState extends State<Createacountpagebody> {
  bool isloading = false;
  bool isChecked = false;
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    late String email;
    late String password;

    return BlocConsumer<Signupcubit, Signupstate>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is signuploading) {
          isloading = true;
        } else if (state is signupSucess) {
          isloading = false;

          GoRouter.of(context).push(Router2.Klogin);
        } else if (state is signupError) {
          isloading = false;
        }
      },
      builder: (context, State) {
        return ModalProgressHUD(
          inAsyncCall: isloading,
          child: Form(
            key: globalKey,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Textcrateaccountsection(),

                  SizedBox(height: 25),

                  Textfeildfromcreateaacount(
                    labelTextl: 'البريد الأكتروني',
                    onChanged: (data) {
                      email = data;
                    },
                  ),
                  Textfeildfromcreateaacount(
                    labelTextl: 'كلمة المرور',
                    onChanged: (data) {
                      password = data;
                    },
                  ),
                  Checkedbox(),
                  SizedBox(height: 16),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Custombuttongetstarted(
                      onTap: () {
                        if (globalKey.currentState!.validate()) {
                          BlocProvider.of<Signupcubit>(
                            context,
                          ).signup(email: email!, password: password!);
                        }
                      },
                      text: 'انشاء حساب',
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class Awesem extends StatelessWidget {
  final String title;
  const Awesem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    // AwesomeDialog.show() returns a Future, not a Widget.
    // Instead, show the dialog via a method, and return a placeholder widget.
    Future.microtask(() {});

    // Return an empty Container or any placeholder widget
    return SizedBox.shrink();
  }
}
