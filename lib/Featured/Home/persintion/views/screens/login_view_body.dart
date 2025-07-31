import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';
import 'package:wazker/Featured/Home/persintion/views/screens/CreateAcountpage.dart';
import 'package:wazker/Featured/Persintion/Home/data/manager/FirebaseloginCubit/googlecubit.dart';
import 'package:wazker/Featured/Persintion/Home/data/manager/FirebaseloginCubit/signincubit.dart';
import 'package:wazker/Featured/Persintion/Home/data/manager/FirebaseloginCubit/signinstate.dart';
import 'package:wazker/Featured/Persintion/Home/views/splash/widget/Remmberme.dart';
import 'package:wazker/Featured/Persintion/Home/views/splash/widget/TextLogin.dart';
import 'package:wazker/Featured/Persintion/Home/views/splash/widget/Textfeildfromcreateaacount.dart';
import 'package:wazker/Featured/Persintion/Home/views/splash/widget/Textfieldloginsection.dart';
import 'package:wazker/Featured/Persintion/Home/views/splash/widget/checkedBox.dart';
import 'package:wazker/Featured/Persintion/Home/views/splash/widget/custombuttongetstarted.dart';
import 'package:wazker/Featured/Persintion/Home/views/splash/widget/customgooglebutton.dart';
import 'package:wazker/Featured/Persintion/Home/views/splash/widget/logintext.dart';
import 'package:wazker/Featured/Persintion/Home/views/splash/widget/orCountueWithWidget.dart';
import 'package:wazker/Featured/utils/AppColors.dart';
import 'package:wazker/Featured/utils/Router.dart';

class LoginViewBody extends StatefulWidget {
  LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  bool isloading = false;
  bool isChecked = false;
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    late String email;

    late String password;

    return BlocConsumer<SignInCubit, Signinstate>(
      listener: (context, state) {
        if (state is signinloading) {
          isloading = true;
        } else if (state is signinSucess) {
          isloading = false;
          GoRouter.of(context).push(Router2.KBookPage);
        } else if (state is signinError) {
          isloading = false;
        }
      },
      builder: (context, state) {
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
                  Logintext(),
                  SizedBox(height: 22),
                  Textfeildfromcreateaacount(
                    labelTextl: 'البريد الاكتروني',
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
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Custombuttongetstarted(
                      onTap: () {
                        if (globalKey.currentState!.validate()) {
                          BlocProvider.of<SignInCubit>(
                            context,
                          ).signInWithEmailAndPassword(
                            email: email,
                            password: password,
                          );
                        }
                      },
                      text: 'تسجيل دخول',
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // <-- Add this line
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        'ليس لديك حساب,     ',
                        style: TextStyle(color: Colors.black),
                      ),
                      GestureDetector(
                        onTap: () {
                          GoRouter.of(context).push(Router2.KCreateacountpage);
                        },
                        child: Text(
                          textAlign: TextAlign.center,
                          'انشاء حساب',
                          style: TextStyle(color: Appcolors.KText),
                        ),
                      ),
                    ],
                  ),
                  orCountueWithWidget(),
                  SizedBox(height: 15),
                  Customgooglebutton(
                    image: 'lib/assets/google.png',
                    onPressed: () {
                      context.read<Googlecubit>().SigninWithgoogle();
                    },
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
