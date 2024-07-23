import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/text_field_screen.dart';

class TextFieldButton extends StatelessWidget {
  const TextFieldButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const TextFieldScreen(),
          ),
        );
      },
      child: const Text('Text Field'),
    );
  }
}
