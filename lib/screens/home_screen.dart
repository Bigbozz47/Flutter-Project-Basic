import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/checkbox_button.dart';
import 'package:flutter_application_3/widgets/form_button.dart';
import 'package:flutter_application_3/widgets/radio_button%20.dart';
import 'package:flutter_application_3/widgets/switch_button.dart';
import 'package:flutter_application_3/widgets/text_field_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Flutter Project App 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFieldButton(),
            CheckboxButton(),
            RadioButton(),
            SwitchButton(),
            FormButton(),
          ],
        ),
      ),
    );
  }
}
