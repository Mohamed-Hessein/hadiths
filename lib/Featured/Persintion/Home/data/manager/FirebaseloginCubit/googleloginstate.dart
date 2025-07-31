import 'package:firebase_auth/firebase_auth.dart';

class Signupstate {}

class signupgoogleintial extends Signupstate {}

class signupgoogleloading extends Signupstate {}

class signupgooglrSucess extends Signupstate {
  final User? user;

  signupgooglrSucess(this.user);
}

class signupgoogleError extends Signupstate {
  final String errMessage;

  signupgoogleError({required this.errMessage});
}
