part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  //this class event to chack user already Loged in or not
  //also maybe this event will be use to force sign in automatically from data
  const factory AuthEvent.authCheckRequested() = AuthCheckRequested;
  const factory AuthEvent.signedOut() = SignedOut;
  //this event will be use to force sign in automatically from data
  //const factory AuthEvent.logedIn() = LogedIn;
}
