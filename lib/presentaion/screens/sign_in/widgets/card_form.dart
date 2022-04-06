import 'package:flutter/material.dart';
import 'package:responsive_login_ui/presentaion/screens/sign_in/sign_in_form.dart';
import 'package:responsive_login_ui/presentaion/screens/sign_in/widgets/tab_switch.dart';
import 'package:responsive_login_ui/presentaion/screens/sign_up/sign_up_form.dart';

class CardForm extends StatefulWidget {
  const CardForm({Key? key}) : super(key: key);

  @override
  State<CardForm> createState() => _CardFormState();
}

class _CardFormState extends State<CardForm> {
  int _selectedIndex = 0;
  final GlobalKey<TabSwitchState> _tabKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            top: 15.0, bottom: 10.0, left: 20.0, right: 20.0),
        //will need to switch between login and register depend on tab choice
        child: SingleChildScrollView(
          child: Column(
            children: [
              TabSwitch(key: _tabKey, selectTab: selectTab),
              _selectedIndex == 0
                  ? SignInForm(
                      onTab: onTabRegister,
                    )
                  : SignUpFormPage(
                      onTab: onTabLogin,
                    ),
            ],
          ),
        ),
      ),
    );
  }

  void selectTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void onTabLogin() {
    selectTab(0);
    _tabKey.currentState?.tabController?.animateTo(0);
  }

  void onTabRegister() {
    selectTab(1);
    _tabKey.currentState?.tabController?.animateTo(1);
  }
}


//Global key worked form after many try because i didn't need to pass key to below widget 
//i just have to pass key to only the widget ineed to access, then use the callback and use key inside that function

//another solution >> StreamController.broadcast() & StreamSubscription, 
//But here i need 2 widget dispatch same evnt and one widget to listen for it


//using  Global key to trigger an animateTo() from TabController instance , not work here
//because i have 2 widget that can trigger that and both of them at same UI page
//that lead to error multi widget have same key. 