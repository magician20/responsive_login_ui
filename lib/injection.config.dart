// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i8;
import 'application/auth/sign_in_bloc/signin_bloc.dart' as _i5;
import 'application/auth/sign_up_bloc/signup_bloc.dart' as _i6;
import 'application/theme/theme_bloc.dart' as _i7;
import 'domain/auth/repository/i_auth_facade.dart' as _i3;
import 'infrastructure/auth/auth_facade.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAuthFacade>(() => _i4.AuthFacade());
  gh.factory<_i5.SignInBloc>(() => _i5.SignInBloc(get<_i3.IAuthFacade>()));
  gh.factory<_i6.SignUpBloc>(() => _i6.SignUpBloc(get<_i3.IAuthFacade>()));
  gh.factory<_i7.ThemeBloc>(() => _i7.ThemeBloc());
  gh.factory<_i8.AuthBloc>(() => _i8.AuthBloc(get<_i3.IAuthFacade>()));
  return get;
}
