import 'package:flutter/material.dart';
import 'package:securityapp/pages/buttons.dart';

void main() {
  runApp(const security());
}
class security extends StatelessWidget {
  const security({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: buttons(),
    );
  }
}


