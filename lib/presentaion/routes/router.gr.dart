// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../screens/Home/home_page.dart' as _i2;
import '../screens/sign_in/sign_in_page.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    SignInRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i1.SignInPage(),
          maintainState: false);
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.HomePage(key: args.key));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig('/#redirect',
            path: '/', redirectTo: '/signin', fullMatch: true),
        _i3.RouteConfig(SignInRoute.name, path: '/signin', children: [
          _i3.RouteConfig('*#redirect',
              path: '*',
              parent: SignInRoute.name,
              redirectTo: '',
              fullMatch: true)
        ]),
        _i3.RouteConfig(HomeRoute.name, path: '/home', children: [
          _i3.RouteConfig('*#redirect',
              path: '*',
              parent: HomeRoute.name,
              redirectTo: '',
              fullMatch: true)
        ]),
        _i3.RouteConfig('*#redirect',
            path: '*', redirectTo: '/signin', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.SignInPage]
class SignInRoute extends _i3.PageRouteInfo<void> {
  const SignInRoute({List<_i3.PageRouteInfo>? children})
      : super(SignInRoute.name, path: '/signin', initialChildren: children);

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i3.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({_i4.Key? key, List<_i3.PageRouteInfo>? children})
      : super(HomeRoute.name,
            path: '/home',
            args: HomeRouteArgs(key: key),
            initialChildren: children);

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}
