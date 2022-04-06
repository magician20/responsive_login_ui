import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_login_ui/application/auth/sign_in_bloc/signin_bloc.dart';
import 'package:responsive_login_ui/presentaion/shared/style.dart';


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
              //labelText: Email ,  // you can change this with out text like you want
              icon: const Icon(Icons.email),
              hintText: "Enter your ${title.toLowerCase()}",
              border: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Theme.of(context).primaryColorLight, width: 2.0)),
              fillColor: Theme.of(context).dividerColor,
              focusColor: Theme.of(context).focusColor,
              hoverColor: Theme.of(context).hoverColor,
              filled: true,
            ),
            controller: widget._emailController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (_) {
              return context.read<SignInBloc>().state.emailAddress!.value.fold(
                    (f) => f.maybeMap(
                      empty: (_) => 'Empty Email', //required
                      invalidEmail: (_) => 'Invalid email',
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
