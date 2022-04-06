import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_login_ui/application/auth/sign_in_bloc/signin_bloc.dart';
import 'package:responsive_login_ui/presentaion/shared/style.dart';


class EnterFieldPassword extends StatefulWidget {
  final TextEditingController _passwordController;
  const EnterFieldPassword(this._passwordController, {Key? key})
      : super(key: key);

  @override
  State<EnterFieldPassword> createState() => _EnterFieldPasswordState();
}

class _EnterFieldPasswordState extends State<EnterFieldPassword> {
  late bool _passwordVisible;

  @override
  void initState() {
    super.initState();
    _passwordVisible = true;
  }

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    const String title = "Password";
    return Container(
      margin: const EdgeInsets.only(top: 10.0,bottom: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: defaultBodyTitleTextSize),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
              //labelText: Password ,  // you can change this with out text like you want
              icon: const Icon(
                Icons.lock,
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  _passwordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Theme.of(context).primaryColorLight,
                ),
                onPressed: _toggle,
              ),
              hintText: "Enter your ${title.toLowerCase()}",
              border: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context).primaryColorLight, width: 2.0),
              ),
              fillColor: Theme.of(context).dividerColor,
              focusColor: Theme.of(context).focusColor,
              hoverColor: Theme.of(context).hoverColor,
              filled: true,
            ),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: widget._passwordController,
            obscureText: _passwordVisible,
            validator: (value) {
              //  if ( value!.isEmpty) {
              //   return "Empty Password";
              //  }
              //  return  null;
              return context.read<SignInBloc>().state.password!.value.fold(
                    (f) => f.maybeWhen(
                      empty: (_) => 'Empty Password', //required
                      orElse: () => "",
                    ),
                    (_) => "",
                  );
            },
          )
        ],
      ),
    );
  }
}
