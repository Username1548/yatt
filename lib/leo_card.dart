import 'package:flutter/material.dart';

class LeoCard extends StatelessWidget {
  const LeoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset('assets/icons/leo.png'),
      contentPadding: const EdgeInsets.all(0),
      title: const Text(
        'Leonardo Dicaprio',
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(38, 45, 53, 1)),
      ),
      subtitle: const Text(
        '59 min ago',
        style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(38, 45, 53, 0.5)),
      ),
    );
  }
}
