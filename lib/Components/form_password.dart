import 'package:flutter/material.dart';

class Form_password extends StatelessWidget {
  const Form_password({
    Key? key,
    required this.password,
  }) : super(key: key);

  final TextEditingController password;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: password,
      obscureText: true,
      validator: (value) {
        if (value == "") {
          return "Password tidak boleh kosong";
        }
        if (value != null && value.length < 7) {
          return 'Minimal 7 karakter password';
        } else {
          return null;
        }
      },
      decoration: const InputDecoration(
          labelText: "Password",
          prefixIcon: Icon(Icons.lock),
          border: OutlineInputBorder()),
    );
  }
}
