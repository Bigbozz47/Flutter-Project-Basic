import 'package:flutter/material.dart';

class TextFieldExample extends StatefulWidget {
  const TextFieldExample({super.key});

  @override
  State<TextFieldExample> createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {
  bool _isShowPassword = false;
  final TextEditingController _controller = TextEditingController();
  String initialValue = '';

  void _togglePassword() {
    setState(() {
      _isShowPassword = !_isShowPassword;
    });
  }

  @override
  void initState() {
    super.initState();

    initialValue = 'Hello World';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _controller,
            obscureText: _isShowPassword ? false : true,
            decoration: InputDecoration(
              hintText: 'Password',
              labelText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              helperText: 'Masukkan email anda yang valid',
              prefixIcon: Icon(Icons.mail),
              suffixIcon: GestureDetector(
                onTap: () {
                  _togglePassword();
                },
                child: Icon(Icons.remove_red_eye),
              ),
            ),
            onChanged: (value) {
              print(value);
            },
          ),
          TextButton(
            onPressed: () {
              print(_controller.text);
            },
            child: const Text('Button'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
