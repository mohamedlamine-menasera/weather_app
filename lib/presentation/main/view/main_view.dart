import 'dart:async';

import 'package:flutter/material.dart';
import 'package:weather_app/presentation/resources/assets_manager.dart';
import 'package:weather_app/presentation/resources/color_manager.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Text("main view"),
        ),
      ),
    );
  }
}
