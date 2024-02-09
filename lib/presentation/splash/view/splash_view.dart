import 'dart:async';

import 'package:flutter/material.dart';
import 'package:weather_app/presentation/resources/constants_manager.dart';
import 'package:weather_app/presentation/resources/routes_manager.dart';

import '../../resources/assets_manager.dart';
import '../../resources/color_manager.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  // Timer for splash screen
  Timer? _timer;

  _startDelay() {
    _timer =
        Timer(const Duration(seconds: AppConstants.splashDelay), _goNext);
  }

  _goNext() {
    Navigator.pushReplacementNamed(context, Routes.mainRoute);
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorManager.white,
      body: Center(child: Image(image: AssetImage(ImageAssets.splashLogo))),
    );
  }

  // Called when this object is removed from the tree permanently.
  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
