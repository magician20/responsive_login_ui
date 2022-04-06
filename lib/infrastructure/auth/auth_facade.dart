import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:responsive_login_ui/domain/auth/repository/auth_failure.dart';
import 'package:responsive_login_ui/domain/auth/entities/user.dart';
import 'package:responsive_login_ui/domain/auth/repository/i_auth_facade.dart';
import 'package:responsive_login_ui/domain/auth/validate/value_objects.dart';


@LazySingleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  @override
  Future<Option<User>> getSignedInUser() {
    // TODO: implement getSignedInUser
    throw UnimplementedError();
  }


  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({Name? name, EmailAddress? emailAddress, RegisterPassword? password}) {
    // TODO: implement registerWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({EmailAddress? emailAddress, LoginPassword? password}) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }
}
