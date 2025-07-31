import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wazker/Featured/Persintion/Home/data/manager/FirebaseloginCubit/signupstate.dart';

class Signupcubit extends Cubit<Signupstate> {
  Signupcubit(super.initialState);
  void signup({required String email, required String password}) async {
    try {
      emit(signuploading());
      UserCredential user = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      emit(signupSucess());
    } on FirebaseException catch (e) {
      print(e.toString());
      emit(signupError());
    }
  }
}
