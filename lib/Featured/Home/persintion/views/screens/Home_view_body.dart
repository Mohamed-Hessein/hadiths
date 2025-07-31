import 'dart:ui';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:sign_button/sign_button.dart';
import 'package:flutter/material.dart';
import 'package:wazker/Featured/Persintion/Home/data/manager/FirebaseloginCubit/googlecubit.dart';
import 'package:wazker/Featured/Persintion/Home/data/manager/FirebaseloginCubit/googleloginstate.dart';
import 'package:wazker/Featured/Persintion/Home/data/manager/FirebaseloginCubit/signincubit.dart';
import 'package:wazker/Featured/Persintion/Home/views/splash/widget/custombuttongetstarted.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router/go_router.dart';
import 'package:wazker/Featured/Persintion/Home/views/splash/widget/customgooglebutton.dart';
import 'package:wazker/Featured/utils/Router.dart';

class HomeViewBody extends StatefulWidget {
  HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Googlecubit, Signupstate>(
      listener: (context, state) {
        if (state is signupgoogleloading) {
          isloading = true;
        } else if (state is signupgooglrSucess) {
          isloading = false;
          AwesomeDialog(
            context: context,
            dialogType: DialogType.success,
            animType: AnimType.scale,
            title: 'تم انشاء حساب بنجاح ',
            desc: 'تم انشاء حساب بنجاح ',
            btnOkOnPress: () {},
          ).show();
          // GoRouter.of(context).push(Router2.KBookPage);
        } else if (state is signupgoogleError) {
          isloading = false;
          AwesomeDialog(
            context: context,
            dialogType: DialogType.error,
            animType: AnimType.scale,
            title: 'فشل انشاء حساب',
            desc: 'فشل انشاء حساب',
            btnOkOnPress: () {},
          ).show();
        }
        // TODO: implement listener
      },
      builder: (context, state) {
        return SafeArea(
          child: ModalProgressHUD(
            inAsyncCall: isloading,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      'وذكر',
                      style: TextStyle(color: Color(0xFF0097A7), fontSize: 24),
                    ),
                    SizedBox(height: 6),
                    Text(
                      textAlign: TextAlign.center,
                      'أهلا بكم في ',
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(height: 7),
                Text(
                  '"من سلك طريقًا يلتمس فيه علمًا سهّل الله له به طريقًا إلى الجنة"',
                  maxLines: 2,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * .03,
                  ),
                ),
                SizedBox(height: 15),
                // SignInButton(
                //   buttonType: ButtonType.google,
                //   onPressed: () {},
                //   buttonSize: ButtonSize.large,
                //   btnColor: Colors.white,
                // ),
                Customgooglebutton(
                  image: 'lib/assets/google.png',
                  onPressed: () {
                    context.read<Googlecubit>().SigninWithgoogle();
                  },
                ),
                SizedBox(height: 15),
                Custombuttongetstarted(
                  text: 'Get Started',
                  onTap: () {
                    GoRouter.of(context).push(Router2.KBookPage);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
