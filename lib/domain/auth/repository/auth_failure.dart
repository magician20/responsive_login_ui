import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'auth_failure.freezed.dart';

//this class will handle failures Likes:
/*
 * User "taps out" of the 3rd party sign-in flow (Google in our case)
 * There is an error on the auth server
 * user wants to register with an email which is already in use
 * user enters an invalid combination of email and password
 */

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  // Serves as a "catch all" failure if we don't know what exactly went wrong
  const factory AuthFailure.serverError() = ServerError;//paramter String? message
  //const factory AuthFailure.badRequest() = BadRequest;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
  const factory AuthFailure.storageWriteFailed() = StorageWriteFailed;
}