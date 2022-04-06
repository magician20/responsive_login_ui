import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_login_ui/application/auth/sign_up_bloc/signup_bloc.dart';

class EnteryFieldLastName extends StatefulWidget {
  final TextEditingController _nameController;
  const EnteryFieldLastName(this._nameController, {Key? key}) : super(key: key);

  @override
  _EnteryFieldLastNameState createState() => _EnteryFieldLastNameState();
}

class _EnteryFieldLastNameState extends State<EnteryFieldLastName> {
  @override
  Widget build(BuildContext context) {
    const String title = "Last Name";
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
            controller: widget._nameController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (_) {
              return context.read<SignUpBloc>().state.name!.value.fold(
                    (f) => f.maybeMap(
                      empty: (_) => 'Empty Name',
                      shortUserName: (str) =>
                          'Short User Name mini ${str.min} letter',
                      invalidNameAlphabet: (_) =>
                         'Invaild Name Only Alphabet',
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
