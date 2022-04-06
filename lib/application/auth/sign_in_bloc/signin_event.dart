part of 'signin_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  /// Notice that these events take in "raw" unvalidated Strings
  // isSumbit when (loading screen)values are validate notifies the bloc that the user
  //is submitting the register form and make button acessible for register (after loading screen ended)
  const factory SignInEvent.emailChanged(String? emailStr) = EmailChanged;
  const factory SignInEvent.passwordChanged(String? passwordStr) =PasswordChanged;
  const factory SignInEvent.signInWithEmailAndPasswordPressed() =SignInWithEmailAndPasswordPressed;
  const factory SignInEvent.signInWithGooglePressed() = SignInWithGooglePressed;
}
