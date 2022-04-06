part of 'signup_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  // isSumbit when (loading screen)values are validate notifies the bloc that the user
  //is submitting the register form and make button acessible for register (after loading screen ended)
  const factory SignUpEvent.emailChanged(String? emailStr) = EmailChanged;
  const factory SignUpEvent.passwordChanged(String? passwordStr) = PasswordChanged;
  const factory SignUpEvent.nameChanged(String? userNameStr) = NameChanged;

  const factory SignUpEvent.registerWithEmailAndPasswordPressed() = RegisterWithEmailAndPasswordPressed;
}
