import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool _isSwitch = false;
  bool _isSwitch2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Switch Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch.adaptive(
              value: _isSwitch,
              onChanged: (newValue) {
                setState(() {
                  _isSwitch = newValue;
                });
              },
            ),
            CupertinoSwitch(
                value: _isSwitch2,
                onChanged: (newValue) {
                  setState(() {
                    _isSwitch2 = newValue;
                  });
                }),
            ElevatedButton(
              onPressed: () {
                print(_isSwitch);
                print(_isSwitch2);
              },
              child: const Text('Check Value'),
            ),
          ],
        ),
      ),
    );
  }
}
