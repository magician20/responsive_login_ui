import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:responsive_login_ui/domain/auth/entities/user.dart';
import 'package:responsive_login_ui/domain/auth/validate/value_objects.dart';


import 'auth_failure.dart';

/*Facade is a design pattern for connecting two or more classes with weird interfaces 
 *into just one simplified interface
 */

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required Name? name,
    @required EmailAddress? emailAddress,
    @required RegisterPassword? password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress? emailAddress,
    @required LoginPassword? password,
  });
  Future<Option<User>> getSignedInUser();
  Future<void> signOut();
  Future<Either<AuthFailure, Unit>> signInWithGoogle();//not used
}
