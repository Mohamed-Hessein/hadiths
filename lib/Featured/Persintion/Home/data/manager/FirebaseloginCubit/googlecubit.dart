import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:wazker/Featured/Persintion/Home/data/manager/FirebaseloginCubit/googleloginstate.dart';

class Googlecubit extends Cubit<Signupstate> {
  Googlecubit(super.initialState);

  Future<void> SigninWithgoogle() async {
    final GoogleSignIn googleSignIn = GoogleSignIn(
      clientId:
          '299165668538-lpb7vuc6pbfsh7293g43sjvvj9ga034m.apps.googleusercontent.com',
    );
    try {
      emit(signupgoogleloading());
      final GoogleSignInAccount? googleSignInAccount = await googleSignIn
          .signIn();
      print('GoogleSignInAccount: $googleSignInAccount');
      if (googleSignInAccount == null) {
        // User cancelled the sign-in
        emit(signupgoogleError(errMessage: 'Sign-in cancelled by user.'));
        return;
      }
      final googleAuth = await googleSignInAccount.authentication;
      print('Google Auth: $googleAuth');
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final userCredential = await FirebaseAuth.instance.signInWithCredential(
        credential,
      );
      print('Firebase User: ${userCredential.user}');
      emit(signupgooglrSucess(userCredential.user));
    } catch (e, stack) {
      print('Google sign-in error: $e\n$stack');
      emit(signupgoogleError(errMessage: e.toString()));
    }
  }
}
