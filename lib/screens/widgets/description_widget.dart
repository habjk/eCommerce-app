import 'package:flutter/material.dart';

class Descrption extends StatelessWidget {
  const Descrption({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Text(description);
  }
}
