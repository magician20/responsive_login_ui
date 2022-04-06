import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:responsive_login_ui/domain/auth/repository/auth_failure.dart';
import 'package:responsive_login_ui/domain/auth/repository/i_auth_facade.dart';
import 'package:responsive_login_ui/domain/auth/validate/value_objects.dart';
import 'package:rxdart/rxdart.dart';

part 'signup_bloc.freezed.dart';
part 'signup_event.dart';
part 'signup_state.dart';

// ignore: constant_identifier_names
const DEFAULT_INPUTLOGIN_DEBOUNCE = 300;

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final IAuthFacade _authFacade;

  SignUpBloc(this._authFacade) : super(SignUpState.initial()) {
    on<EmailChanged>(_mapEmailChangedToState,
        transformer: debounceTransformer(
            const Duration(milliseconds: DEFAULT_INPUTLOGIN_DEBOUNCE)));
    on<PasswordChanged>(_mapPasswordChangedToState,
        transformer: debounceTransformer(
            const Duration(milliseconds: DEFAULT_INPUTLOGIN_DEBOUNCE)));
    on<NameChanged>(_mapUserUserNameChangedToState,
        transformer: debounceTransformer(
            const Duration(milliseconds: DEFAULT_INPUTLOGIN_DEBOUNCE)));
    on<RegisterWithEmailAndPasswordPressed>(
        _mapRegisterWithEmailAndPasswordPressedToState);
  }

/*
 * each time the user changes the text input, a new request is sent. So when the user types the 
 * email quickly there will be as many requests as the letters this title contains. good practice in
 * this situation is to wait for a small amount of time and cancel the previous request when 
 * a new one is send This method is called (debounce) >> RXDart
*/
  EventTransformer<Event> debounceTransformer<Event>(Duration duration) {
    return (events, mapper) {
      return events.debounceTime(duration).switchMap(mapper);
    };
  }

//*********************Implemention for generate States*************/
  Future<void> _mapEmailChangedToState(
      EmailChanged e, Emitter<SignUpState> emit) async {
    //generate EmailaddressChanged state
    emit(state.copyWith(
      emailAddress: EmailAddress(e.emailStr!),
      authFailureOrSuccessOption: none(),
    ));
  }

  Future<void> _mapPasswordChangedToState(
      PasswordChanged e, Emitter<SignUpState> emit) async {
    //generate PasswordChanged state
    emit(state.copyWith(
      password: RegisterPassword(e.passwordStr!),
      authFailureOrSuccessOption: none(),
    ));
  }

  Future<void> _mapUserUserNameChangedToState(
      NameChanged e, Emitter<SignUpState> emit) async {
    //generate PasswordChanged state
    emit(state.copyWith(
      name: Name(e.userNameStr!),
      authFailureOrSuccessOption: none(),
    ));
  }


  Future<void> _mapRegisterWithEmailAndPasswordPressedToState(
      RegisterWithEmailAndPasswordPressed e, Emitter<SignUpState> emit) async {
    Either<AuthFailure, Unit>? failureOrSuccess;
    //check all values(also first name /last name / phone number)
    final isEmailValid = state.emailAddress!.isValid();
    final isPasswordValid = state.password!.isValid();
    final isUserNameValid = state.name!.isValid();

    //check if all valid
    if (isEmailValid && isPasswordValid && isUserNameValid) {
      //sumbit state generated >> show loading screen until data comming
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ));
      //USING REPOSITORY TO Register
      failureOrSuccess = await _authFacade.registerWithEmailAndPassword(
          name: state.name,
          emailAddress: state.emailAddress,
          password: state.password);
    }
    //RegisterSucessOrFailure state generated
    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }
}
