import 'package:flutter/material.dart';

class CreateDebt extends StatelessWidget {
  const CreateDebt({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Colors.amber),
      ),
    );
  }
}
