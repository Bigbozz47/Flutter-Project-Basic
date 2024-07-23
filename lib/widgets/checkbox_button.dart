import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/checkbox_screen.dart';

class CheckboxButton extends StatelessWidget {
  const CheckboxButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const CheckboxScreen(),
          ),
        );
      },
      child: const Text('CheckBox'),
    );
  }
}
