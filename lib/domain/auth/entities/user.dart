import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:responsive_login_ui/domain/auth/validate/value_objects.dart';
import 'package:responsive_login_ui/domain/core/value_objects.dart';



part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User(
     StringSingleLine name,
     EmailAddress emailAddress,
     {UniqueId? id,}//idk about that
  ) = _User;

}

