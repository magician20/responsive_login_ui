import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail(
    T? failedValue,
  ) = InvalidEmail<T>;
  const factory ValueFailure.invalidNameAlphabet(
    T? failedValue,
  ) = InvalidUserName<T>;
  const factory ValueFailure.shortPassword(
    T? failedValue, {
    int? min,
  }) = ShortPassword<T>;
  const factory ValueFailure.shortUserName(
    T? failedValue, {
    int? min,
  }) = ShortUserName<T>;
  const factory ValueFailure.multiline(
    T? failedValue,
  ) = Multiline<T>;
  const factory ValueFailure.listTooLong(
    T? failedValue, {
    int? max,
  }) = ListTooLong<T>;
  const factory ValueFailure.exceedingLength(
    T? failedValue, {
    int? max,
  }) = ExceedingLength<T>;
  const factory ValueFailure.empty(
    T? failedValue,
  ) = Empty<T>;
  const factory ValueFailure.atLeastOneUpperChar(
    T? failedValue,
  ) = AtLeastOneUpperChar<T>;
  const factory ValueFailure.atLeastOneLowerChar(
    T? failedValue,
  ) = AtLeastOneLowerChar<T>;
  const factory ValueFailure.atLeastOneDigit(
    T? failedValue,
  ) = AtLeastOneDigit<T>;
  const factory ValueFailure.atLeastOneSpecialChar(
    T? failedValue,
  ) = AtLeastOneSpecialChar<T>;

  const factory ValueFailure.invalidStatus(T? failedValue) = InvalidStatus<T>;
  const factory ValueFailure.invalidState(T? failedValue) = InvalidState<T>;
}
