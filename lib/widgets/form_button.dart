import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/form_screen.dart';

class FormButton extends StatelessWidget {
  const FormButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const FormScreen(),
          ),
        );
      },
      child: const Text('Form'),
    );
  }
}
