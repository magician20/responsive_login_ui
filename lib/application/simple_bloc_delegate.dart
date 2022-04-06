import 'dart:developer';

import 'package:bloc/bloc.dart';

class SimpleBlocDelegate extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    log('onCreate -- ${bloc.runtimeType}');
    // print('onCreate -- ${bloc.runtimeType}');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
     log('onEvent --${bloc.runtimeType} $event');
    // print('onEvent --${bloc.runtimeType} $event');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
       log('onError --${bloc.runtimeType} $error');
    // print('onError --${bloc.runtimeType} $error');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
       log('onTransition --${bloc.runtimeType} $transition');
    // print('onTransition --${bloc.runtimeType} $transition');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
       log('onChange -- ${bloc.runtimeType}, $change');
    // print('onChange -- ${bloc.runtimeType}, $change');
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
       log('onClose -- ${bloc.runtimeType}');
    // print('onClose -- ${bloc.runtimeType}');
  }
}
