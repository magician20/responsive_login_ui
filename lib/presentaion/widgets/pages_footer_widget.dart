import 'package:flutter/material.dart';
import 'package:responsive_login_ui/presentaion/shared/style.dart';

class PageSignUpFooterLabel extends StatelessWidget {
   final VoidCallback? onTab;
   const PageSignUpFooterLabel({Key? key, this.onTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Already have an account ?',
            style: TextStyle(
              fontSize: defaultBodyTextStyle.fontSize,
              fontWeight: defaultBodyTextStyle.fontWeight,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: onTab,
            child: Text(
              'Login',
              style: TextStyle(
                color: Theme.of(context).primaryColorDark,
                fontSize: defaultBodyTextStyle.fontSize,
                fontWeight: defaultBodyTextStyle.fontWeight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class PageLoginFooterLabel extends StatelessWidget {
  final VoidCallback? onTab;
  const PageLoginFooterLabel({Key? key, this.onTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Text(
            "Don't have an account ?",
            style: TextStyle(
              fontSize: defaultBodyTextStyle.fontSize,
              fontWeight: defaultBodyTextStyle.fontWeight,
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          InkWell(
            onTap: onTab,
            child: Text(
              'Register',
              style: TextStyle(
                  color: Theme.of(context).primaryColorDark,
                  fontSize: defaultBodyTextStyle.fontSize,
                  fontWeight: defaultBodyTextStyle.fontWeight),
            ),
          ),
        ],
      ),
    );
  }
}
