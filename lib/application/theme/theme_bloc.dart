import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:responsive_login_ui/presentaion/shared/app_themes.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

@injectable
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState.initial()) {
    on<ThemeChanged>(_mapThemeChangedToState);
  }

  Future<void> _mapThemeChangedToState(
      ThemeEvent e, Emitter<ThemeState> emit) async {
    //generate EmailaddressChanged state
    if (e is ThemeChanged) {
      emit(ThemeState(themeData: appThemeData[e.appTheme]));
    }
  }
}
