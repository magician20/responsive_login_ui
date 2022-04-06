import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:responsive_login_ui/domain/auth/entities/user.dart';
import 'package:responsive_login_ui/domain/auth/repository/i_auth_facade.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade):super (const Initial()){
     on<AuthCheckRequested>(_mapAppStartedToState);
     on<SignedOut>(_mapLoggedOutToState);
  }
  

  Future<void> _mapAppStartedToState(AuthCheckRequested e, Emitter<AuthState> emit) async {
    //check id user authed and it will return user or none
    final userOption = await _authFacade.getSignedInUser(); // Error
    emit(userOption.fold(
      //generate unauthenticated state if hold none(this tell ui user not loged in)
      () => const AuthState.unauthenticated(),
      //generate authenticated state if hold User(this tell ui user already loged in)
      (user) => AuthState.authenticated(user),
    ));
  }

  Future<void> _mapLoggedOutToState(SignedOut e, Emitter<AuthState> emit) async {
    //will call logout then
    await _authFacade.signOut();
    //show loading before change state
    emit(const AuthState.loadingOut());
    //dispose the data & release the memory
    ///code here
    //generate unauthenticated state
     emit(const AuthState.unauthenticated());
  }
  
}
