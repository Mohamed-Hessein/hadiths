class Signinstate {}

class signinintial extends Signinstate {}

class signinloading extends Signinstate {}

class signinSucess extends Signinstate {}

class signinError extends Signinstate {
  final String errMessage;

  signinError({required this.errMessage});
}
