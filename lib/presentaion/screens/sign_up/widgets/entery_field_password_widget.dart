import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_login_ui/application/auth/sign_up_bloc/signup_bloc.dart';

class EnterFieldPassword extends StatefulWidget {
  final TextEditingController _passwordController;
  const EnterFieldPassword(this._passwordController, {Key? key})
      : super(key: key);

  @override
  State<EnterFieldPassword> createState() => _EnterFieldPasswordState();
}

class _EnterFieldPasswordState extends State<EnterFieldPassword> {
  @override
  Widget build(BuildContext context) {
    const String title = "Password";
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
                //labelText: title ,  // you can change this with out text like you want
                hintText: "Please enter your ${title.toLowerCase()}",
                border: InputBorder.none,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Theme.of(context).primaryColorLight,
                        width: 2.0)),
                fillColor: Theme.of(context).dividerColor,
                focusColor: Theme.of(context).focusColor,
                hoverColor: Theme.of(context).hoverColor,
                filled: true),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: widget._passwordController,
            obscureText: true,
            validator: (_) {
              return context.read<SignUpBloc>().state.password!.value.fold(
                    (f) => f.maybeMap(
                      empty: (_) => 'Empty Password',
                      shortPassword: (str) =>
                          'Short password ${str.min} letter',
                      atLeastOneDigit: (_) => 'At least One Digit',
                      atLeastOneLowerChar: (_) =>
                          'At least One Lower Case Letter',
                      atLeastOneUpperChar: (_) =>
                          'At least One Upper Case Letter',
                      atLeastOneSpecialChar: (_) =>
                          'At least One Special Letter',
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
