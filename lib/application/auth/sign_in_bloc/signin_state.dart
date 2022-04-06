part of 'signin_bloc.dart';

@freezed
class SignInState  with _$SignInState {
   const factory SignInState({
    //Validated EmailAddress 
    @required EmailAddress? emailAddress,
    //Validated password length only
    @required LoginPassword? password,
    //Whether or not to show input error messages
    @required bool? showErrorMessages,
    //Showing a progress indicator
    @required bool? isSubmitting,
    //Success or error backend response
    @required Option<Either<AuthFailure, Unit>>? authFailureOrSuccessOption,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
        emailAddress: EmailAddress(''),
        password: LoginPassword(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}

