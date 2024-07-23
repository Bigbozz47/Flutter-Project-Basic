import 'package:flutter/material.dart';

class CheckboxScreen extends StatefulWidget {
  const CheckboxScreen({super.key});

  @override
  State<CheckboxScreen> createState() => _CheckboxScreenState();
}

class _CheckboxScreenState extends State<CheckboxScreen> {
  bool? _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CheckboxListTile(
            title: Text('Ngoding'),
            value: _isChecked1,
            onChanged: (newValue) {
              setState(() {
                _isChecked1 = newValue;
              });
            },
          ),
          CheckboxListTile(
            title: Text('Mancing'),
            value: _isChecked2,
            onChanged: (newValue) {
              setState(() {
                _isChecked2 = newValue!;
              });
            },
          ),
          CheckboxListTile(
            title: Text('Olahraga'),
            value: _isChecked3,
            onChanged: (newValue) {
              setState(() {
                _isChecked3 = newValue!;
              });
            },
          ),
          ElevatedButton(
            onPressed: () {
              print(_isChecked1);
              print(_isChecked2);
              print(_isChecked3);
            },
            child: const Text('Check Value'),
          ),
        ],
      ),
    );
  }
}
