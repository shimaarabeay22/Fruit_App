import 'package:flutter/material.dart';

import 'widgets/on_boarding_body.dart';


class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
static const String routeName ='onBoarding';
  @override
  Widget build(BuildContext context) {
    return const OnBoardingBody();
  }
}
