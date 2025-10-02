import 'package:flutter/material.dart';

import 'widgets/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
 static const String routeName ='signupView';
  @override
  Widget build(BuildContext context) {
    return SignupViewBody();
  }
}
