import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_login_ui/app_widget.dart';
import 'package:responsive_login_ui/application/simple_bloc_delegate.dart';
import 'package:responsive_login_ui/injection.dart';
import 'package:url_strategy/url_strategy.dart';
void main() {
  /*  
 *WidgetsFlutterBinding.ensureInitialized() is required in Flutter v1.9.4+ 
 *before using any plugins if the code is executed before runApp. 
 */
  WidgetsFlutterBinding.ensureInitialized();
  //build injection
  configureDependencies();
  //For remove # from URL for all platform, read docs
  setPathUrlStrategy();
  //build block observer
   BlocOverrides.runZoned(
    () => runApp(const App()),
    blocObserver: SimpleBlocDelegate(),
  );
}