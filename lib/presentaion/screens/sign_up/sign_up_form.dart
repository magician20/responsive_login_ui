import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_login_ui/application/auth/sign_up_bloc/signup_bloc.dart';
import 'package:responsive_login_ui/presentaion/screens/sign_up/widgets/entery_field_email_widget.dart';
import 'package:responsive_login_ui/presentaion/screens/sign_up/widgets/entery_field_first_name_widget.dart';
import 'package:responsive_login_ui/presentaion/screens/sign_up/widgets/entery_field_password_widget.dart';
import 'package:responsive_login_ui/presentaion/widgets/pages_footer_widget.dart';

class SignUpFormPage extends StatefulWidget {
  final VoidCallback onTab;

  const SignUpFormPage({Key? key, required this.onTab}) : super(key: key);

  @override
  _SignUpFormPageState createState() => _SignUpFormPageState();
}

class _SignUpFormPageState extends State<SignUpFormPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();

  bool get isPopulated =>
      _userNameController.text.isNotEmpty &&
      _emailController.text.isNotEmpty &&
      _passwordController.text.isNotEmpty;

  bool isLoginButtonEnabled(SignUpState state) {
    final bool isForm = state.emailAddress!.isValid() &&
        state.password!.isValid() &&
        state.name!.isValid();
    return isForm && isPopulated && !state.isSubmitting!;
  }

  @override
  void initState() {
    super.initState();
    _emailController.addListener(_onChangedEmail);
    _passwordController.addListener(_onChangedPassword);
    _userNameController.addListener(_onChangedUserName);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _userNameController.dispose();
    super.dispose();
  }

  void _onChangedEmail() {
    context
        .read<SignUpBloc>()
        .add(SignUpEvent.emailChanged(_emailController.text));
  }

  void _onChangedPassword() {
    context
        .read<SignUpBloc>()
        .add(SignUpEvent.passwordChanged(_passwordController.text));
  }

  void _onChangedUserName() {
    context
        .read<SignUpBloc>()
        .add(SignUpEvent.nameChanged(_userNameController.text));
  }

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return BlocListener<SignUpBloc, SignUpState>(
      listener: (BuildContext context, SignUpState state) {
        state.authFailureOrSuccessOption!.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                FlushbarHelper.createError(
                  message: failure.map(
                    // Use localized strings here in your apps
                    cancelledByUser: (_) => 'Cancelled',
                    serverError: (_) => 'Server error',
                    emailAlreadyInUse: (_) => 'Email already in use',
                    invalidEmailAndPasswordCombination: (_) =>
                        'Invalid email and password combination',
                    storageWriteFailed: (_) =>
                        'Secure Storage write date failed',
                  ),
                ).show(context);
              },
              (_) {
                //1-move to login page. or 2- do auth for login automatic and move to home page
                widget.onTab();
              },
            );
          },
        );
      },
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Form(
            child: BlocBuilder<SignUpBloc, SignUpState>(
                builder: (BuildContext context, state) {
              return Column(
                children: <Widget>[
                  EnteryFieldFirstName(_userNameController),
                  EnterFieldEmail(_emailController),
                  EnterFieldPassword(_passwordController),
                ],
              );
            }),
          ),
          const SizedBox(
            height: 5.0,
          ),
          BlocBuilder<SignUpBloc, SignUpState>(
              builder: (BuildContext context, state) {
            return _regiterButton(context, state,
                isButtonEbabled: isLoginButtonEnabled(state));
          }),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            alignment: Alignment.bottomCenter,
            child: PageSignUpFooterLabel(onTab: widget.onTab),
          ),
        ],
      ),
    );
  }

  Widget _regiterButton(BuildContext context, SignUpState state,
      {bool isButtonEbabled = false}) {
    return IgnorePointer(
      ignoring: !isButtonEbabled,
      child: Align(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                side: BorderSide(color: Theme.of(context).buttonColor)),
            primary: isButtonEbabled
                ? Theme.of(context).buttonColor
                : Theme.of(context).scaffoldBackgroundColor, //background
            onPrimary: isButtonEbabled
                ? Theme.of(context).scaffoldBackgroundColor
                : Theme.of(context).buttonColor, //foreground
          ),
          onPressed: () {
            //trigger the event to start check register User info and depend on that the state will change
            context
                .read<SignUpBloc>()
                .add(const SignUpEvent.registerWithEmailAndPasswordPressed());
          },
          child: state.isSubmitting!
              ? const SizedBox(
                  height: 50.0,
                  child: CircularProgressIndicator(
                    backgroundColor:
                        Colors.orange, //Theme.of(context).colorScheme.primary
                  ),
                )
              : const Text(
                  'Register Now',
                  style: TextStyle(fontSize: 20),
                ),
        ),
      ),
    );
  }
}
