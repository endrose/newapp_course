import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String firstName;
  final String lastName;

  const SecondScreen({
    super.key,
    required this.firstName,
    required this.lastName,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [],
        ),
      ),
    );
  }
}
