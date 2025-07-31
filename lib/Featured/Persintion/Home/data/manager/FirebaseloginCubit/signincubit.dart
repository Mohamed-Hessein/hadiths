import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:wazker/Featured/Persintion/Home/data/manager/FirebaseloginCubit/signinstate.dart';

class SignInCubit extends Cubit<Signinstate> {
  SignInCubit(super.initialState);

  void signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      emit(signinloading());
      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      emit(signinSucess());
    } on FirebaseException catch (e) {
      print(e.toString());

      if (e.code == 'user-not-found') {
        emit(signinError(errMessage: 'user mot found'));
      } else if (e.code == 'wrong-pasword') {
        emit(signinError(errMessage: 'Wrong password'));
      }
    } catch (e) {
      emit(signinError(errMessage: 'spmthing wnt wrong'));
    }
  }
}
