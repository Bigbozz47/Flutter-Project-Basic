import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/switch_screen.dart';

class SwitchButton extends StatelessWidget {
  const SwitchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const SwitchScreen(),
          ),
        );
      },
      child: const Text('Switch'),
    );
  }
}
