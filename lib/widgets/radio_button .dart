import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/radio_screen%20.dart';

class RadioButton extends StatelessWidget {
  const RadioButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const RadioScreen(),
          ),
        );
      },
      child: const Text('Radio'),
    );
  }
}
