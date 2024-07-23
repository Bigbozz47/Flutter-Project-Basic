import 'package:flutter/material.dart';

class RadioScreen extends StatefulWidget {
  const RadioScreen({super.key});

  @override
  State<RadioScreen> createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  int? _selectedRadioValue;

  void _handleRadio(int? newValue) {
    setState(() {
      _selectedRadioValue = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: const Text('Radio 1'),
            leading: Radio<int>(
              value: 1,
              groupValue: _selectedRadioValue,
              onChanged: _handleRadio,
            ),
          ),
          ListTile(
            title: const Text('Radio 2'),
            leading: Radio<int>(
              value: 2,
              groupValue: _selectedRadioValue,
              onChanged: _handleRadio,
            ),
          ),
          ListTile(
            title: const Text('Radio 3'),
            leading: Radio<int>(
              value: 3,
              groupValue: _selectedRadioValue,
              onChanged: _handleRadio,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print(_selectedRadioValue);
            },
            child: const Text('Check Value'),
          ),
        ],
      ),
    );
  }
}
