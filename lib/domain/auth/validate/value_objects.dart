
import 'package:dartz/dartz.dart';
import 'package:responsive_login_ui/domain/core/failures.dart';
import 'package:responsive_login_ui/domain/core/value_objects.dart';
import 'package:responsive_login_ui/domain/core/value_validators.dart';



class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>,String> value;

   factory EmailAddress(String input) {
     return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value) ;

}


class LoginPassword extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>,String> value;

   factory LoginPassword(String input) {
     return LoginPassword._(
      validateLoginPassword(input),
    );
  }

  const LoginPassword._(this.value) ;

}


class RegisterPassword extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>,String> value;

   factory RegisterPassword(String input) {
     return RegisterPassword._(
      validateRegisterPassword(input),
    );
  }

  const RegisterPassword._(this.value) ;

}




//it's comman wrapper for single line string
class Name extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Name(String input) {
    return Name._(
      validateRegisterName(input),
    );
  }

  const Name._(this.value);
}


// //it's comman wrapper for single line string
// class FirstName extends ValueObject<String> {
//   @override
//   final Either<ValueFailure<String>, String> value;

//   factory FirstName(String input) {
//     return FirstName._(
//       validateRegisterName(input),
//     );
//   }

//   const FirstName._(this.value);
// }

// //it's comman wrapper for single line string
// class LastName extends ValueObject<String> {
//   @override
//   final Either<ValueFailure<String>, String> value;

//   factory LastName(String input) {
//     return LastName._(
//       validateRegisterName(input),
//     );
//   }

//   const LastName._(this.value);
// }

