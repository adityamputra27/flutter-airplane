import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: const Center(
        child: Text('Transaction page'),
      ),
    );
  }
}
