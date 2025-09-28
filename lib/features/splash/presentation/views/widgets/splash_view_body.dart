import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fruit_app/gen/assets.gen.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    executeNavigation();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(Assets.images.plant),
          ],
        ),
        SvgPicture.asset(Assets.images.logo),
        SvgPicture.asset(
          Assets.images.splashBottom,
          fit: BoxFit.fill,
        )
      ],
    );
  }
  void executeNavigation(){
    Future.delayed(const Duration(seconds: 1),
            (){Navigator.pushReplacementNamed(context, OnBoardingView.routeName);});
  }
}
