import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/tetxt_field_example.dart';

class TextFieldScreen extends StatelessWidget {
  const TextFieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text Field Example')),
      body: Center(
        child: TextFieldExample(),
      ),
    );
  }
}
