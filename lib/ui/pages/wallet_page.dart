import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: const Center(
        child: Text('Wallet page'),
      ),
    );
  }
}
