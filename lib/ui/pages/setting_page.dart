import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: const Center(
        child: Text('Setting page'),
      ),
    );
  }
}
