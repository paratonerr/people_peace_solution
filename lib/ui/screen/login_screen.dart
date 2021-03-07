import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:people_peace_solution/ui/provider/login_provider.dart';
import 'package:people_peace_solution/ui/widget/login_Widget.dart';
import 'package:people_peace_solution/utils/routes.dart';
import 'package:provider/provider.dart';
class Login_Screen extends StatefulWidget {
  @override
  _Login_ScreenState createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {

  LoginProvider _loginProvider;
  @override
  Widget build(BuildContext context) {
    _loginProvider=Provider.of<LoginProvider>(context);
    return Scaffold(
      body: login_widget(),
    );
  }


}
