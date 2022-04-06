import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_login_ui/application/auth/sign_up_bloc/signup_bloc.dart';

class EnterFieldEmail extends StatefulWidget {
  final TextEditingController _emailController;

  const EnterFieldEmail(this._emailController, {Key? key}) : super(key: key);

  @override
  State<EnterFieldEmail> createState() => _EnterFieldEmailState();
}

class _EnterFieldEmailState extends State<EnterFieldEmail> {
  @override
  Widget build(BuildContext context) {
    const String title = "Email";
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
            controller: widget._emailController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (_) {
              return context.read<SignUpBloc>().state.emailAddress!.value.fold(
                    (f) => f.maybeMap(
                      invalidEmail: (_) => 'Invalid email',
                      empty: (_) => 'Empty Email',
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
