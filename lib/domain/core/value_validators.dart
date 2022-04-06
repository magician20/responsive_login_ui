import 'package:dartz/dartz.dart';


import 'failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String? input) {
  // Empty value don't forget. (required)
  if (input == null || input.isEmpty) {
    return left(ValueFailure.empty(input));
  }
  // Maybe not the most robust way of email validation but it's good enough
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(input));
  }
}

Either<ValueFailure<String>, String> validateLoginPassword(String? input) {
 //only check if it's empty value
  if (input == null || input.isEmpty) {
    return left(ValueFailure.empty(input));
  }
  return right(input);
}


Either<ValueFailure<String>, String> validateRegisterPassword(String? input) {
  int minLength = 8;
  // Empty value don't forget.
  if (input == null || input.isEmpty) {
    return left(ValueFailure.empty(input));
  }
  // You can also add some advanced password checks (uppercase/lowercase, at least 1 number, ...)
  const passRegexAtLeastOneUpper =
      r'^(?=.*[A-Z])'; // should contain at least one upper case
  const passRegexAtLeastOneLower =
      r'^(?=.*[a-z])'; // should contain at least one lower case
  const passRegexAtLeastOneDigit =
      r'^(?=.*?[0-9])'; // should contain at least one digit
  const passRegexAtLeastOneSpecialCh =
      r'[!@#$%^&*(),.?":{}|<>]'; // should contain at least one Special character

  if (input.length < minLength) {
    return left(ValueFailure.shortPassword(input, min: 8));
  }
  if (!RegExp(passRegexAtLeastOneUpper).hasMatch(input)) {
    return left(ValueFailure.atLeastOneUpperChar(input));
  }
  if (!RegExp(passRegexAtLeastOneLower).hasMatch(input)) {
    return left(ValueFailure.atLeastOneLowerChar(input));
  }
  if (!RegExp(passRegexAtLeastOneDigit).hasMatch(input)) {
    return left(ValueFailure.atLeastOneDigit(input));
  }
  if (!RegExp(passRegexAtLeastOneSpecialCh).hasMatch(input)) {
    return left(ValueFailure.atLeastOneSpecialChar(input));
  }
  return right(input);
}

Either<ValueFailure<String>, String> validateRegisterName(String? input) {
  const minLength = 3;
  // Empty value don't forget.
  if (input == null || input.isEmpty) {
    return left(ValueFailure.empty(input));
  }
  // username is 6-20 characters long
 // const validateUserName = r'^(?=[a-zA-Z0-9._])(?!.*[_.]{2})[^_.].*[^_.]$';
   const validateAlphabet =  r'^[a-zA-Z]+$';

  if (input.contains('\n')) {
    return left(ValueFailure.multiline(input));
  }
  if (input.length < minLength) {
    return left(ValueFailure.shortUserName(input, min: minLength));
  }
  if (!RegExp(validateAlphabet).hasMatch(input)) {
    return left(ValueFailure.invalidNameAlphabet(input));
  }

  return right(input);
}

/// *********************************** Pages ********************************************* */
Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.multiline(input));
  } else {
    return right(input);
  }
}